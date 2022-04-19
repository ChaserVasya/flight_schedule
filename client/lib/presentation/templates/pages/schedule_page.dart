import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/presentation/notifiers/schedule_page.dart';
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
      child: FutureBuilder<void>(
        future: context.read<SchedulePageViewModel>().retrieve(),
        builder: contentBuilder,
      ),
    );
  }

  Widget contentBuilder(BuildContext context, AsyncSnapshot<void> snap) {
    switch (snap.connectionState) {
      case ConnectionState.none:
        throw Exception();
      case ConnectionState.waiting:
        return const CircularProgressIndicator();
      case ConnectionState.active:
        return const CircularProgressIndicator();
      case ConnectionState.done:
        return RefreshIndicator(
          onRefresh: context.read<SchedulePageViewModel>().retrieve,
          child: listBuilder(context),
        );
    }
  }

  Widget listBuilder(BuildContext context) {
    return Selector<SchedulePageViewModel, List<Flight>>(
      selector: (_, viewModel) => viewModel.flights,
      builder: (_, flights, __) {
        print("List rebuilds");

        flights.retainWhere(flightFilter);

        return ListView.separated(
          itemCount: flights.length,
          separatorBuilder: (_, __) => Divider(color: Colors.grey[500]),
          itemBuilder: (_, i) => FlightItem(
            id: flights[i].id,
            description: descriptionBuilder(flights[i]),
          ),
        );
      },
    );
  }
}
