import 'package:flight_schedule/domain/entities/flight_status.dart';
import 'package:flutter/material.dart';

class StatusText extends StatelessWidget {
  const StatusText(this.status, {Key? key}) : super(key: key);

  final FlightStatus status;

  @override
  Widget build(BuildContext context) {
    final Color color = switchColor();
    final String text = status.toRUString();
    return Row(
      children: [
        Text(text, style: TextStyle(color: color)),
        if (status == FlightStatus.arrived) const Text(" в "),
        if (status == FlightStatus.departed) const Text(" в "),
        if (status == FlightStatus.delay) const Text(" до "),
      ],
    );
  }

  Color switchColor() {
    switch (status) {
      case FlightStatus.arrived:
        return Colors.green;
      case FlightStatus.canceled:
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
