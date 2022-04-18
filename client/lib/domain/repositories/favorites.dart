abstract class FavoritesRepo {
  Future<void> set(Set<int> favs);
  Future<Set<int>> get();
}
