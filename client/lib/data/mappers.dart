import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/entities/flight_status.dart';

Flight extractFlight(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
  final json = doc.data();

  return Flight(
    id: int.parse(doc.id),
    codes: json["codes"],
    arrivalCity: json["arrivalCity"],
    departureCity: json["departureCity"],
    actualTime: DateTime.fromMillisecondsSinceEpoch(json["actualTime"]),
    sheduledTime: DateTime.fromMillisecondsSinceEpoch(json["sheduledTime"]),
    status: stringToStatus(json["status"]),
  );
}

FlightStatus stringToStatus(String str) {
  switch (str) {
    case "arrived":
      return FlightStatus.arrived;
    case "boarding":
      return FlightStatus.boarding;
    case "canceled":
      return FlightStatus.canceled;
    case "checkIn":
      return FlightStatus.checkIn;
    case "delay":
      return FlightStatus.delay;
    case "departed":
      return FlightStatus.departed;
    case "inFlight":
      return FlightStatus.inFlight;
    case "noValue":
      return FlightStatus.noValue;
    default:
      throw Exception();
  }
}
