import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flutter/material.dart';

abstract class FlightDescription extends StatelessWidget {
  const FlightDescription({required this.flight, Key? key}) : super(key: key);

  final Flight flight;
}
