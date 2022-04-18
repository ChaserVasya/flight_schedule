import * as functions from "firebase-functions";
import * as firestore from "firebase-admin/firestore";
import * as messaging from "firebase-admin/messaging";
import {FirebaseError} from "firebase-admin/app";
import {FlightStatus} from "../entities/flight";

functions.firestore.document("flights/{flightID}").onUpdate(
    async (change, context) => {
      const oldStatus = change.before.get("status");
      const newStatus = change.after.get("status");

      if (newStatus === oldStatus) return;

      const snap = await firestore.getFirestore().collection("tokens").get();

      const subscribedTokens: string[] = [];

      for (const tokenDoc of snap.docs) {
        const IDs: number[] | undefined = tokenDoc.get("IDs");

        if (IDs === undefined) continue; // no favs
        if (!IDs.includes(context.params.flightID)) continue;

        subscribedTokens.push(tokenDoc.id);
      }
      if (subscribedTokens.length === 0) return;

      await sendFlightChangedMessage(subscribedTokens, change.after.data());
    }
);

function statusToRU(status:string):string {
  switch (status) {
    case FlightStatus.arrived:
      return "прибыл";
    case FlightStatus.boarding:
      return "посадка";
    case FlightStatus.canceled:
      return "отменено";
    case FlightStatus.checkIn:
      return "регистрация";
    case FlightStatus.delay:
      return "задержан";
    case FlightStatus.departed:
      return "отбыл";
    case FlightStatus.inFlight:
      return "в полёте";
    case FlightStatus.noValue:
      return "-";
    default:
      throw Error("Wrong status: " + status);
  }
}

async function sendFlightChangedMessage(
    tokens: string[],
    flightData: firestore.DocumentData,
) {
  const codes = (flightData["codes"] as Array<string>).join(", ");
  const status = flightData["status"] as string;
  const arrivalCity = flightData["arrivalCity"] as string;
  const departureCity = flightData["departureCity"] as string;

  const body = `Статус рейса ${codes} ${departureCity}-${arrivalCity} изменился на: ${statusToRU(status)}`;

  const payload:messaging.MessagingPayload = {
    notification: {
      title: "Статус рейса изменён",
      body: body,
      sound: "default",
    },
  };

  const options:messaging.MessagingOptions = {
    priority: "high",
  };

  const responce = await messaging.getMessaging().sendToDevice(tokens, payload, options);

  if (!responce.failureCount) return;

  const errors: FirebaseError[] = [];
  for (const result of responce.results) {
    if (result.error === undefined) continue;

    if (result.error.code === "messaging/invalid-argument" ||
     result.error.code === "messaging/invalid-registration-token" ||
     result.error.code === "messaging/registration-token-not-registered"
    ) {
      errors.push(result.error);
      // eslint-disable-next-line @typescript-eslint/no-non-null-assertion
      await firestore.getFirestore().collection("tokens").doc(result.canonicalRegistrationToken!).delete();
    }
  }

  if (errors.length) throw errors;
}
