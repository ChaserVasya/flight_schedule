import 'package:flight_schedule/domain/entities/flight_info.dart';
import 'package:flight_schedule/domain/entities/flight_status.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flutter/material.dart';

class ArrivalDescription extends FlightDescription {
  const ArrivalDescription(FlightInfo info, {Key? key}) : super(info: info, key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(children: [
          Text(info.arrivalCity),
          Text(info.departureCity),
          Text(info.flights.join(", ")),
        ]),
        Column(children: [
          Text(info.status.toLocalisedString()),
          Text("${info.actualTime.hour}:${info.actualTime.minute}"),
          Text("${info.sheduledTime}"),
        ]),
      ],
    );
  }
}
