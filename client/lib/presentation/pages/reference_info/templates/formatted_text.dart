import 'package:flutter/material.dart';

class FormattedText extends StatelessWidget {
  const FormattedText(this.text, {Key? key}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      " " * 6 + text,
      textAlign: TextAlign.justify,
    );
  }
}
