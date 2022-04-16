import 'package:flight_schedule/presentation/notifiers/bottom_bar.dart';
import 'package:flight_schedule/presentation/notifiers/favorite.dart';
import 'package:flight_schedule/presentation/notifiers/flight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FavoriteViewModel>(create: (_) => FavoriteViewModel()),
        ChangeNotifierProvider<FlightViewModel>(create: (_) => FlightViewModel()),
        ChangeNotifierProvider<BottomBarViewModel>(create: (_) => BottomBarViewModel()),
      ],
      child: MaterialApp(
        title: 'Flight schedule',
        routes: routes,
        initialRoute: "/init",
      ),
    );
  }
}
