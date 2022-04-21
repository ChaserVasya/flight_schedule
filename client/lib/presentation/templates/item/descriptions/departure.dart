import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/entities/flight_status.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/scheduled_time.dart';
import 'package:flutter/material.dart';

import 'board_time.dart';
import 'status_text.dart';

class DepartureDescription extends FlightDescription {
  const DepartureDescription(Flight flight, {Key? key}) : super(key: key, flight: flight);

  @override
  List<Widget> rightColumn() {
    switch (flight.status) {
      case FlightStatus.noValue:
      case FlightStatus.checkIn:
      case FlightStatus.boarding:
        return [
          StatusText(flight.status),
          ScheduledTime(flight.scheduledTime),
        ];
      case FlightStatus.canceled:
        return [
          StatusText(flight.status),
        ];
      default:
        return [
          Row(children: [
            StatusText(flight.status),
            BoardTime(flight.actualTime),
          ]),
          ScheduledTime(flight.scheduledTime),
        ];
    }
  }
}
