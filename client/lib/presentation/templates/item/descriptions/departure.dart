import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/entities/flight_status.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flutter/material.dart';

class DepartureDescription extends FlightDescription {
  const DepartureDescription(Flight flight, {Key? key}) : super(flight: flight, key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          Text(flight.departureCity),
          Text(flight.arrivalCity),
          Text(flight.codes.join(", ")),
        ]),
        Column(children: [
          Text(flight.status.toLocalisedString()),
          Text("${flight.actualTime.hour}:${flight.actualTime.minute}"),
          Text("${flight.sheduledTime}"),
        ]),
      ],
    );
  }
}
