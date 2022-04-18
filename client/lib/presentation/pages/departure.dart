import 'package:flight_schedule/presentation/templates/item/descriptions/departure.dart';
import 'package:flight_schedule/presentation/templates/pages/schedule_page.dart';
import 'package:flutter/material.dart';

class DeparturePage extends StatelessWidget {
  const DeparturePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SchedulePageTemplate(
      flightFilter: (flight) => flight.departureCity == "Ю-САХАЛИНСК",
      descriptionBuilder: (flight) => DepartureDescription(flight),
    );
  }
}
