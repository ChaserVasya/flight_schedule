import 'package:flutter/material.dart';

class DrawerTemplate extends StatelessWidget {
  const DrawerTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      key: key,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assets/images/logo_text.png"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  _NavigationButton("Как добраться", "/reference_info/how_to_get_there"),
                  _NavigationButton("Парковка", "/reference_info/parking"),
                  _NavigationButton("Covid-19", "/reference_info/covid_19"),
                  _NavigationButton("Электронный посадочный талон", "/reference_info/electronic_boarding_pass"),
                  _NavigationButton("Специальные возможности", "/reference_info/special_transportation"),
                  _NavigationButton("Контакты", "/reference_info/contacts"),
                ],
              ),
            ),
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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          text,
          textScaleFactor: 1.5,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
