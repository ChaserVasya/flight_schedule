import 'package:flight_schedule/presentation/pages/arrival.dart';
import 'package:flight_schedule/presentation/pages/departure.dart';
import 'package:flight_schedule/presentation/pages/favorites.dart';
import 'package:flight_schedule/presentation/pages/init.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  "/init": (_) => const InitPage(),
  "/arrival": (_) => const ArrivalPage(),
  "/departure": (_) => const DeparturePage(),
  "/favorites": (_) => const FavoritesPage(),
};
