import 'package:flight_schedule/presentation/templates/pages/page.dart';
import 'package:flutter/material.dart';

class SpecialTransportationMenuPage extends StatelessWidget {
  const SpecialTransportationMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: "Специальные возможности",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          NavigationButton("Перевозка животных", "/reference_info/special_transportation/animals"),
          NavigationButton("Перевозка детей", "/reference_info/special_transportation/children"),
          NavigationButton("Перевозка инвалидов", "/reference_info/special_transportation/disabled"),
        ],
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  const NavigationButton(this.text, this.path, {Key? key}) : super(key: key);

  final String text;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextButton(
        child: Text(text),
        onPressed: () => Navigator.of(context).pushNamed(path),
      ),
    );
  }
}
