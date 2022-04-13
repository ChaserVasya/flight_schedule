import 'package:flutter/material.dart';

class FavoriteViewModel extends ChangeNotifier {
  Set<int> _favoriteFlightsIDs;

  bool isFavorite(int id) => _favoriteFlightsIDs.contains(id);

  void toggleFavoriteState(int id) {
    if (_favoriteFlightsIDs.contains(id)) {
      _favoriteFlightsIDs.remove(id);
    } else {
      _favoriteFlightsIDs.add(id);
    }
    notifyListeners();
  }
}
