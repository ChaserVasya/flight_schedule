import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BoardTime extends StatelessWidget {
  const BoardTime(
    this.dateTime, {
    this.style = const TextStyle(fontWeight: FontWeight.bold),
    Key? key,
  }) : super(key: key);

  final DateTime dateTime;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.Hm().format(dateTime),
      style: style,
    );
  }
}
