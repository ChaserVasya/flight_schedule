import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flight_schedule/data/mappers/favorites.dart';
import 'package:flight_schedule/domain/repositories/favorites.dart';

class FavoritesRepoFirebase implements FavoritesRepo {
  final tokens = FirebaseFirestore.instance.collection("tokens");

  @override
  Future<void> set(Set<int> newFavs) async {
    final token = await FirebaseMessaging.instance.getToken();
    await tokens.doc(token).set({"IDs": newFavs.toList()});
  }

  @override
  Future<Set<int>> get() async {
    final token = await FirebaseMessaging.instance.getToken();
    final doc = await tokens.doc(token).get(const GetOptions(source: Source.server));
    return doc.exists ? toFavorites(doc.data()) : {};
  }
}
