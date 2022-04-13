import 'package:flight_schedule/presentation/notifiers/favorite.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FavoriteViewModel>(
      create: (_) => FavoriteViewModel(),
      child: MaterialApp(
        title: 'Flight schedule',
        routes: routes,
        initialRoute: "/arrival",
      ),
    );
  }
}
