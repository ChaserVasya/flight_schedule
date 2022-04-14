import 'package:flight_schedule/presentation/templates/item/descriptions/arrival.dart';
import 'package:flight_schedule/presentation/templates/pages/schedule_page.dart';
import 'package:flutter/material.dart';

class ArrivalPage extends StatelessWidget {
  const ArrivalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SchedulePageTemplate(
      flightFilter: (flight) => flight.arrivalCity == "Южно-Сахалинск",
      descriptionBuilder: (flight) => ArrivalDescription(flight),
    );
  }
}
