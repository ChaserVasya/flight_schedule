import 'package:flight_schedule/domain/entities/flight_status.dart';

class Flight {
  final int id;

  final String arrivalCity;
  final String departureCity;

  final DateTime actualTime;
  final DateTime sheduledTime;

  final List<String> codes;

  final FlightStatus status;

  const Flight({
    required this.id,
    required this.status,
    required this.codes,
    required this.arrivalCity,
    required this.departureCity,
    required this.actualTime,
    required this.sheduledTime,
  });
}
