import 'package:flutter/material.dart';

abstract class FlightDescription extends StatelessWidget {
  const FlightDescription({Key? key}) : super(key: key);

  List<Text> leftColumn();
  List<Text> rightColumn();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: leftColumn(),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: rightColumn(),
        ),
      ],
    );
  }
}
