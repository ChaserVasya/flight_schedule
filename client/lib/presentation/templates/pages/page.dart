import 'package:flight_schedule/presentation/templates/scaffold/bottom_navigator_bar.dart';
import 'package:flight_schedule/presentation/templates/scaffold/drawer.dart';
import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  const PageTemplate({required this.child, this.title, Key? key}) : super(key: key);

  final Widget child;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: title != null ? Text(title!) : null),
      drawer: const DrawerTemplate(),
      bottomNavigationBar: BottomNavigationBarTemplate(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
