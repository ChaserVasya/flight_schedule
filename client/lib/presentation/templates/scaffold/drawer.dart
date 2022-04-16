import 'package:flutter/material.dart';

class DrawerTemplate extends StatelessWidget {
  const DrawerTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: key,
      child: SafeArea(
        child: Column(
          children: const [
            _NavigationButton("Covid-19", "/reference_info/covid_19"),
            _NavigationButton("Специальные возможности", "/reference_info/special_transportation"),
            _NavigationButton("Парковка", "/reference_info/parking"),
            _NavigationButton("Как добраться", "/reference_info/how_to_get_there"),
            _NavigationButton("Электронный посадочный талон", "/reference_info/electronic_boarding_pass"),
            _NavigationButton("Контакты", "/reference_info/contacts"),
          ],
        ),
      ),
    );
  }
}

class _NavigationButton extends StatelessWidget {
  const _NavigationButton(this.text, this.path, {Key? key}) : super(key: key);

  final String text;
  final String path;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Navigator.of(context).pushNamed(path),
      child: Text(text),
    );
  }
}
