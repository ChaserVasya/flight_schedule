import 'package:flutter/material.dart';

import 'board_time.dart';

class ScheduledTime extends StatelessWidget {
  const ScheduledTime(this.dateTime, {Key? key}) : super(key: key);

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 11);
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const Text("По расписанию в ", style: style),
        BoardTime(dateTime, style: style),
      ],
    );
  }
}
