import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/entities/flight_status.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DepartureDescription extends FlightDescription {
  const DepartureDescription(this.flight, {Key? key}) : super(key: key);

  final Flight flight;

  @override
  List<Text> leftColumn() {
    return [
      Text(flight.departureCity),
      Text(flight.arrivalCity),
      Text(flight.codes.join(", ")),
    ];
  }

  @override
  List<Text> rightColumn() {
    final status = flight.status.toLocalisedString();
    final actualTime = DateFormat.Hm().format(flight.actualTime);
    final scheduledTime = DateFormat.Hm().format(flight.scheduledTime);

    switch (flight.status) {
      case FlightStatus.noValue:
      case FlightStatus.checkIn:
      case FlightStatus.boarding:
        return [
          Text(status),
          Text("По расписанию в " + scheduledTime),
        ];
      case FlightStatus.canceled:
        return [
          Text(status),
        ];
      default:
        return [
          Text(status + " " + actualTime),
          Text("По расписанию в " + scheduledTime),
        ];
    }
  }
}
