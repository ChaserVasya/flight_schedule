import 'package:flight_schedule/presentation/notifiers/bottom_bar.dart';
import 'package:flight_schedule/presentation/notifiers/schedule_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'error/error_handler.dart';
import 'error/show_exception_dialog.dart';
import 'routes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SchedulePageViewModel>(create: (_) => SchedulePageViewModel()),
        ChangeNotifierProvider<BottomBarViewModel>(create: (_) => BottomBarViewModel()),
      ],
      child: MaterialApp(
        title: 'Flight schedule',
        routes: routes,
        initialRoute: "/init",
        navigatorKey: navigatorKey,
        builder: (_, widget) {
          ErrorWidget.builder = ErrorHandler.errorWidgetBuilder;
          return widget!;
        },
      ),
    );
  }
}
