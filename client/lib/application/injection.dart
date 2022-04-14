import 'package:flight_schedule/data/repositories/favorites/local.dart';
import 'package:flight_schedule/data/repositories/flights/mock.dart';
import 'package:flight_schedule/domain/repositories/favorites.dart';
import 'package:flight_schedule/domain/repositories/flights.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> inject() async {
  getIt.registerSingleton<FavoritesRepo>(
    FavoritesRepoLocal(
      await SharedPreferences.getInstance(),
    ),
  );

  getIt.registerSingleton<FlightsRepo>(
    FlightsRepoMock(),
  );
}
