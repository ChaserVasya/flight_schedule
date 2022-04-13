import 'package:flight_schedule/domain/entities/flight_info.dart';
import 'package:flutter/material.dart';

abstract class FlightDescription extends StatelessWidget {
  const FlightDescription({required this.info, Key? key}) : super(key: key);

  final FlightInfo info;
}
