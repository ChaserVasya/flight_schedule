"use strict";

import * as app from "firebase-admin/app";
import * as firestore from "firebase-admin/firestore";
import {flights} from "./mock-data.js";

console.log("Data setup...");

const credentialsPath = "C:/Dev/Projects/flight_schedule/server/admin/admin-credentials.json";
app.initializeApp({credential: app.cert(credentialsPath)});

const store = firestore.getFirestore();

for (const flight of flights) {
  await store
      .collection("flights")
      .doc(flight.id.toString())
      .set(flight.toPlainObject());
}

console.log("Data are setuped");
