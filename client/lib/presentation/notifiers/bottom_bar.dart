import 'package:flutter/material.dart';

class BottomBarViewModel extends ChangeNotifier {
  MainPage currentPage = MainPage.arrival;

  void changePage(MainPage page) {
    currentPage = page;
    notifyListeners();
  }
}

enum MainPage {
  arrival,
  departure,
  favorites,
}
