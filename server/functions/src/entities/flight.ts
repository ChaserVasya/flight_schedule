import {DocumentData, Timestamp} from "firebase-admin/firestore";

export class Flight {
  id: number;
  arrivalCity: string;
  scheduledTime: Date;
  codes: Array<string>;
  actualTime: Date;
  departureCity: string;
  status: FlightStatus;

  constructor(
      {
        id,
        arrivalCity,
        scheduledTime,
        codes,
        actualTime,
        departureCity,
        status,
      }: {
      id: number,
      arrivalCity: string,
      scheduledTime: Date,
      codes: Array<string>,
      actualTime: Date,
      departureCity: string,
      status: FlightStatus,
    }
  ) {
    this.id = id;
    this.arrivalCity = arrivalCity;
    this.scheduledTime = scheduledTime;
    this.codes = codes;
    this.actualTime = actualTime;
    this.departureCity = departureCity;
    this.status = status;
  }

  toPlainObject():DocumentData {
    return {
      "arrivalCity": this.arrivalCity,
      "scheduledTime": Timestamp.fromDate(this.scheduledTime),
      "codes": this.codes,
      "actualTime": Timestamp.fromDate(this.actualTime),
      "departureCity": this.departureCity,
      "status": this.status.toString(),
    };
  }
}


export enum FlightStatus {
  // Common
  noValue = "noValue",
  canceled = "canceled",
  delay = "delay",

  // Arriving
  inFlight = "inFlight",
  arrived = "arrived",

  // Departing
  checkIn = "checkIn",
  boarding = "boarding",
  departed = "departed",
}
