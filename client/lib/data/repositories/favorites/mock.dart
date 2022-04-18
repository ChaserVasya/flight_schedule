import 'package:flight_schedule/domain/repositories/favorites.dart';

class FavoritesRepoMock implements FavoritesRepo {
  Set<int> _favs = {1, 2, 3, 4, 5};

  @override
  Future<Set<int>> get() async => _favs;

  @override
  Future<void> set(Set<int> newFavs) async => _favs = newFavs;
}
