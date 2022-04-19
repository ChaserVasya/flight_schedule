import 'package:flight_schedule/application/injection.dart';
import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/repositories/favorites.dart';
import 'package:flight_schedule/domain/repositories/flights.dart';
import 'package:flutter/cupertino.dart';

///TODO Should I spleet [SchedulePageViewModel] to [Favorites...] and [Flights]?
/// Advantage of a [SchedulePageViewModel] is a single retrieve of all needed data
/// Disadvanage is a mixing of loosely interconnected favs and flights

class SchedulePageViewModel extends ChangeNotifier {
  final _favsRepo = getIt<FavoritesRepo>();
  final _flightsRepo = getIt<FlightsRepo>();

  late Set<int> _favs;
  final Set<int> _refreshingFavs = {};

  late List<Flight> _flights;

  List<Flight> get flights => _flights.toList();

  Future<void> retrieve() async {
    print("retreive");
    _favs = await _favsRepo.get();
    _flights = await _flightsRepo.get();
    notifyListeners();
  }

  Future<void> toggleFavoriteState(int id) async {
    print("toggleFavoriteState");
    _refreshingFavs.add(id);

    notifyListeners();

    try {
      _favs.contains(id) ? _favs.remove(id) : _favs.add(id);
      await _favsRepo.set(_favs);
    } catch (e) {
      _favs.contains(id) ? _favs.remove(id) : _favs.add(id); //reverse transaction
    } finally {
      _refreshingFavs.remove(id);
    }

    notifyListeners();
  }

  Status favoriteStatus(int id) {
    if (_refreshingFavs.contains(id)) return Status.refreshing;
    return _favs.contains(id) ? Status.favorite : Status.notFavorite;
  }
}

enum Status {
  favorite,
  refreshing,
  notFavorite,
}
