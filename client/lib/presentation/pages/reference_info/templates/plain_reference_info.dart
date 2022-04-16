import 'package:flight_schedule/presentation/templates/pages/page.dart';
import 'package:flutter/material.dart';

import 'formatted_text.dart';

class PlainReferenceInfoPage extends StatelessWidget {
  const PlainReferenceInfoPage({required this.texts, required this.title, Key? key}) : super(key: key);

  final List<String> texts;
  final String title;

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: title,
      child: ListView(
        children: List.generate(
          texts.length,
          (i) => FormattedText(texts[i]),
        ),
      ),
    );
  }
}
