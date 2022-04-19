import 'package:flight_schedule/presentation/notifiers/schedule_page.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlightItem extends StatelessWidget {
  const FlightItem({
    Key? key,
    required this.id,
    required this.description,
  }) : super(key: key);

  final int id;
  final FlightDescription description;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: description),
        FavoriteToggle(id),
      ],
    );
  }
}

class FavoriteToggle extends StatelessWidget {
  const FavoriteToggle(this.id, {Key? key}) : super(key: key);

  final int id;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => context.read<SchedulePageViewModel>().toggleFavoriteState(id),
      child: Selector<SchedulePageViewModel, Status>(
        selector: (_, viewModel) => viewModel.favoriteStatus(id),
        builder: (_, favoriteStatus, __) {
          print("New status is '$favoriteStatus'");
          switch (favoriteStatus) {
            case Status.favorite:
              return const Icon(Icons.star);
            case Status.notFavorite:
              return const Icon(Icons.star_border);
            case Status.refreshing:
              return const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(),
              );
          }
        },
      ),
    );
  }
}
