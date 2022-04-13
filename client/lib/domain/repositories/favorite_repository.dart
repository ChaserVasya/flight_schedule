abstract class FavoriteRepository {
  void setFavorite();
  void deleteFavorite(int id);
  bool checkFavorite();
  List<bool> getFavorites();
}
