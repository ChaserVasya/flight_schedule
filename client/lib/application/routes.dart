import 'package:flight_schedule/presentation/pages/arrival.dart';
import 'package:flight_schedule/presentation/pages/departure.dart';
import 'package:flight_schedule/presentation/pages/favorites.dart';
import 'package:flight_schedule/presentation/pages/init.dart';
import 'package:flight_schedule/presentation/pages/reference_info/contacts.dart';
import 'package:flight_schedule/presentation/pages/reference_info/covid.dart';
import 'package:flight_schedule/presentation/pages/reference_info/electronic_boarding_pass.dart';
import 'package:flight_schedule/presentation/pages/reference_info/how_to_get_there.dart';
import 'package:flight_schedule/presentation/pages/reference_info/parking.dart';
import 'package:flight_schedule/presentation/pages/reference_info/special_transportation/animals.dart';
import 'package:flight_schedule/presentation/pages/reference_info/special_transportation/children.dart';
import 'package:flight_schedule/presentation/pages/reference_info/special_transportation/disabled.dart';
import 'package:flight_schedule/presentation/pages/reference_info/special_transportation/menu.dart';
import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  "/init": (_) => const InitPage(),
  "/arrival": (_) => const ArrivalPage(),
  "/departure": (_) => const DeparturePage(),
  "/favorites": (_) => const FavoritesPage(),
  "/reference_info/contacts": (_) => ContactsPage(),
  "/reference_info/covid_19": (_) => CovidPage(),
  "/reference_info/electronic_boarding_pass": (_) => ElectronicBoardingPassPage(),
  "/reference_info/how_to_get_there": (_) => const HowToGetTherePage(),
  "/reference_info/parking": (_) => ParkingPage(),
  "/reference_info/special_transportation": (_) => const SpecialTransportationMenuPage(),
  "/reference_info/special_transportation/animals": (_) => AnimalsTransportationPage(),
  "/reference_info/special_transportation/children": (_) => ChildrenTransportationPage(),
  "/reference_info/special_transportation/disabled": (_) => const DisabledTransportationPage(),
};
