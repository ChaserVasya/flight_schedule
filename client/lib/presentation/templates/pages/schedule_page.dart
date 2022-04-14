import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/presentation/notifiers/flight.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flight_schedule/presentation/templates/item/flight_item.dart';
import 'package:flight_schedule/presentation/templates/pages/page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SchedulePageTemplate extends StatelessWidget {
  const SchedulePageTemplate({
    Key? key,
    required this.descriptionBuilder,
    required this.flightFilter,
  }) : super(key: key);

  final FlightDescription Function(Flight) descriptionBuilder;
  final bool Function(Flight) flightFilter;

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: FutureBuilder<List<Flight>>(
        future: context.read<FlightViewModel>().flights,
        builder: (_, snap) {
          if (snap.hasData) {
            snap.data!.retainWhere(flightFilter);
            return ListView.separated(
              itemCount: snap.data!.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (_, i) => FlightItem(
                description: descriptionBuilder(snap.data![i]),
              ),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
