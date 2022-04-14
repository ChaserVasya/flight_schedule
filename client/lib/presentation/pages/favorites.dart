import 'package:flight_schedule/presentation/notifiers/favorite.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/arrival.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/departure.dart';
import 'package:flight_schedule/presentation/templates/pages/schedule_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isFavorite = context.read<FavoriteViewModel>().isFavorite;
    return SchedulePageTemplate(
      flightFilter: (flight) => isFavorite(flight.id),
      descriptionBuilder: (flight) {
        if (flight.departureCity == "Южно-Сахалинск") return DepartureDescription(flight);
        if (flight.arrivalCity == "Южно-Сахалинск") return ArrivalDescription(flight);
        throw Exception("Flight without category");
      },
    );
  }
}
