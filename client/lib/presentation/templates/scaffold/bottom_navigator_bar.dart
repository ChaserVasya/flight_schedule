import 'package:flight_schedule/presentation/notifiers/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarTemplate extends StatelessWidget {
  const BottomNavigationBarTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: context.watch<BottomBarViewModel>().currentPage.index,
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Theme.of(context).backgroundColor,
      unselectedItemColor: Theme.of(context).canvasColor,
      items: _createItems(),
      onTap: (itemNum) => _onTap(itemNum, context),
    );
  }

  List<BottomNavigationBarItem> _createItems() {
    return const [
      BottomNavigationBarItem(
        label: "Прилёты",
        icon: Icon(Icons.flight_land),
      ),
      BottomNavigationBarItem(
        label: "Вылеты",
        icon: Icon(Icons.flight_takeoff),
      ),
      BottomNavigationBarItem(
        label: "Избранное",
        icon: Icon(Icons.star),
      ),
    ];
  }

  Object? _onTap(int itemNum, BuildContext context) {
    final setIndex = context.read<BottomBarViewModel>().changePage;
    switch (itemNum) {
      case 0:
        setIndex(MainPage.arrival);
        return Navigator.of(context).pushReplacementNamed("/arrival");
      case 1:
        setIndex(MainPage.departure);
        return Navigator.of(context).pushReplacementNamed("/departure");
      case 2:
        setIndex(MainPage.favorites);
        return Navigator.of(context).pushReplacementNamed("/favorites");
      default:
        throw Exception();
    }
  }
}
