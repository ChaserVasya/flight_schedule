import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/entities/flight_status.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ArrivalDescription extends FlightDescription {
  const ArrivalDescription(this.flight, {Key? key}) : super(key: key);

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
    return [
      Text(flight.status.toLocalisedString()),
      Text("в " + DateFormat.Hm().format(flight.actualTime)),
      Text("По расписанию " + DateFormat.Hm().format(flight.scheduledTime)),
    ];
  }
}
