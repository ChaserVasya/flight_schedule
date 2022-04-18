import 'package:flight_schedule/data/repositories/favorites/firebase.dart';
import 'package:flight_schedule/data/repositories/favorites/mock.dart';
import 'package:flight_schedule/data/repositories/flights/firebase.dart';
import 'package:flight_schedule/data/repositories/flights/mock.dart';
import 'package:flight_schedule/domain/repositories/favorites.dart';
import 'package:flight_schedule/domain/repositories/flights.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> inject() async {
  getIt.registerSingleton<FavoritesRepo>(
    FavoritesRepoFirebase(),
  );

  getIt.registerSingleton<FlightsRepo>(
    FlightsRepoFirebase(),
  );
}
