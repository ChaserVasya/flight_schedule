import 'package:flight_schedule/presentation/notifiers/schedule_page.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/arrival.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/departure.dart';
import 'package:flight_schedule/presentation/templates/pages/schedule_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favStatus = context.read<SchedulePageViewModel>().favoriteStatus;
    return SchedulePageTemplate(
      flightFilter: (flight) => favStatus(flight.id) == Status.favorite || favStatus(flight.id) == Status.refreshing,
      descriptionBuilder: (flight) {
        if (flight.departureCity == "Ю-САХАЛИНСК") return DepartureDescription(flight);
        if (flight.arrivalCity == "Ю-САХАЛИНСК") return ArrivalDescription(flight);
        throw Exception("Flight without category");
      },
    );
  }
}
