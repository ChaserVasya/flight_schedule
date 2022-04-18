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
    _favs = await _favsRepo.get();
    _flights = await _flightsRepo.get();
  }

  Future<void> toggleFavoriteState(int id) async {
    _refreshingFavs.add(id);

    notifyListeners();

    try {
      await _favsRepo.set(_favs);
      _favs.contains(id) ? _favs.remove(id) : _favs.add(id);
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
