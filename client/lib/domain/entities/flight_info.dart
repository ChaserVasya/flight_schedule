import 'package:flight_schedule/domain/entities/flight_status.dart';

class FlightInfo {
  final int id;

  final String arrivalCity;
  final String departureCity;

  final DateTime actualTime;
  final DateTime sheduledTime;

  final List<String> flights;

  final FlightStatus status;

  const FlightInfo(
    this.arrivalCity,
    this.departureCity,
    this.actualTime,
    this.sheduledTime,
    this.flights,
    this.status,
    this.id,
  );
}
