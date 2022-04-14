import 'package:flight_schedule/application/injection.dart';
import 'package:flight_schedule/domain/repositories/favorites.dart';
import 'package:flutter/material.dart';

class FavoriteViewModel extends ChangeNotifier {
  final repo = getIt<FavoritesRepo>();

  bool isFavorite(int id) => repo.favs.contains(id);

  void toggleFavoriteState(int id) {
    final favs = repo.favs;
    favs.contains(id) ? favs.remove(id) : favs.add(id);
    repo.favs = favs;

    notifyListeners();
  }
}
