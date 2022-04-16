import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/presentation/notifiers/flight.dart';
import 'package:flight_schedule/presentation/templates/item/descriptions/flight.dart';
import 'package:flight_schedule/presentation/templates/item/flight_item.dart';
import 'package:flight_schedule/presentation/templates/pages/page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///TODO Refactor [FlightItem], [SchedulePageTemplate], [FlightDescription].
/// Refactor it public API, constructors, injections.

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
        builder: contentBuilder,
      ),
    );
  }

  Widget contentBuilder(BuildContext _, AsyncSnapshot<List<Flight>> snap) {
    if (snap.hasData) {
      snap.data!.retainWhere(flightFilter);
      return listBuilder(snap.data!);
    } else {
      return const CircularProgressIndicator();
    }
  }

  Widget listBuilder(List<Flight> flights) {
    return ListView.separated(
      itemCount: flights.length,
      separatorBuilder: (_, __) => Divider(color: Colors.grey[500]),
      itemBuilder: (_, i) => FlightItem(
        id: flights[i].id,
        description: descriptionBuilder(flights[i]),
      ),
    );
  }
}
