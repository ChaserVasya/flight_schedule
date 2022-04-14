import 'package:flight_schedule/application/injection.dart';
import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/repositories/flights.dart';
import 'package:flutter/cupertino.dart';

class FlightViewModel extends ChangeNotifier {
  final _repo = getIt<FlightsRepo>();

  Future<List<Flight>> get flights => _repo.getAll();
}
