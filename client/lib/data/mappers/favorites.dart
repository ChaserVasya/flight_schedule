Set<int> toFavorites(Map<String, dynamic>? json) {
  final list = json!["IDs"];
  return List.castFrom<dynamic, int>(list).toSet();
}

Map<String, dynamic> toDocData(Set<int> set) {
  return {"IDs": set};
}

//TODO Refactor mappers
