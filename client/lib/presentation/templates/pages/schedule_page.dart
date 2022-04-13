import 'package:flight_schedule/domain/entities/flight_info.dart';
import 'package:flight_schedule/presentation/templates/descriptions/flight.dart';
import 'package:flight_schedule/presentation/templates/item/flight_item.dart';
import 'package:flutter/material.dart';

import 'page.dart';

class SchedulePageTemplate extends StatelessWidget {
  const SchedulePageTemplate({
    Key? key,
    required this.descriptionBuilder,
    required this.flightFilter,
  }) : super(key: key);

  final FlightDescription Function(FlightInfo) descriptionBuilder;
  final bool Function(FlightInfo) flightFilter;

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      child: FutureBuilder<List<FlightInfo>>(builder: (_, snap) {
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
      }),
    );
  }
}
