// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flight_schedule/domain/repositories/favorites.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesRepoLocal implements FavoritesRepo {
  FavoritesRepoLocal(this._prefs);

  final SharedPreferences _prefs;

  static const plug = false;

  @override
  Set<int> get favs {
    final keys = _prefs.getKeys();
    final favs = keys.map((e) => int.parse(e));
    return favs.toSet();
  }

  //TODO design algoritm with best time and space complexity
  @override
  set favs(Set<int> newFavs) {
    final oldKeys = _prefs.getKeys();
    final newKeys = newFavs.map((e) => "$e").toSet();

    final keysToAdd = newKeys.difference(oldKeys);
    final keysToRemove = oldKeys.difference(newKeys);

    for (final key in keysToAdd) _prefs.setBool(key, plug);
    for (final key in keysToRemove) _prefs.remove(key);
  }
}
