import 'package:flight_schedule/domain/repositories/favorites.dart';

class FavoritesRepoMock implements FavoritesRepo {
  Set<int> _favs = {1, 2, 3, 4, 5};

  @override
  Set<int> get favs => _favs;

  @override
  set favs(Set<int> newFavs) => _favs = newFavs;
}
