import 'package:flutter/material.dart';

class BottomNavigationBarTemplate extends StatelessWidget {
  const BottomNavigationBarTemplate({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.blue,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      items: _createItems(),
      onTap: (itemNum) => _onTap(itemNum, context),
    );
  }

  static Object? _onTap(int itemNum, BuildContext context) {
    switch (itemNum) {
      case 0:
        return Navigator.of(context).pushNamed("/arrival");
      case 1:
        return Navigator.of(context).pushNamed("/departure");
      case 2:
        return Navigator.of(context).pushNamed("/favorites");
      default:
        throw Exception();
    }
  }

  static List<BottomNavigationBarItem> _createItems() {
    return const [
      BottomNavigationBarItem(
        label: "Взлёт",
        icon: Icon(Icons.flight_takeoff),
        activeIcon: Icon(Icons.flight_takeoff),
      ),
      BottomNavigationBarItem(
        label: "Посадка",
        icon: Icon(Icons.flight_land),
        activeIcon: Icon(Icons.flight_land),
      ),
      BottomNavigationBarItem(
        label: "Избранное",
        icon: Icon(Icons.star),
        activeIcon: Icon(Icons.star),
      ),
    ];
  }
}
