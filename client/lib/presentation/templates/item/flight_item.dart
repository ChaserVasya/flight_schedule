import 'package:flight_schedule/presentation/notifiers/favorite.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlightItem extends StatelessWidget {
  const FlightItem({
    Key? key,
    required this.description,
  }) : super(key: key);

  final FlightDescription description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        description,
        FavoriteToggle(description.info.id),
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
      onPressed: () => context.read<FavoriteViewModel>().toggleFavoriteState(id),
      child: Selector<FavoriteViewModel, bool>(
        selector: (_, viewModel) => viewModel.isFavorite(id),
        builder: (_, isFavorite, __) => Icon(isFavorite ? Icons.star : Icons.star_border),
      ),
    );
  }
}
