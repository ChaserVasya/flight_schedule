import 'package:flight_schedule/presentation/templates/scaffold/bottom_navigator_bar.dart';
import 'package:flight_schedule/presentation/templates/scaffold/drawer.dart';
import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: DrawerTemplate(),
      bottomNavigationBar: const BottomNavigationBarTemplate(),
      body: Center(
        child: child,
      ),
    );
  }
}
