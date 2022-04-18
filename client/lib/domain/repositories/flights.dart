import 'package:flight_schedule/domain/entities/flight.dart';

abstract class FlightsRepo {
  Future<List<Flight>> get();
}
