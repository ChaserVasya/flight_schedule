import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/entities/flight_status.dart';
import 'package:flight_schedule/domain/repositories/flights.dart';

class FlightsRepoMock implements FlightsRepo {
  @override
  Future<List<Flight>> getAll() => Future.value(_flights);

  static final List<Flight> _flights = [
    Flight(
      id: 1,
      status: FlightStatus.arrived,
      codes: ["lala-1234"],
      arrivalCity: "Южно-Сахалинск",
      departureCity: "Москва",
      actualTime: DateTime(2022, 4, 14, 10, 15),
      sheduledTime: DateTime(2022, 4, 14, 15, 00),
    ),
    Flight(
      id: 3,
      status: FlightStatus.canceled,
      codes: ["lala-321", "hui-1488"],
      arrivalCity: "Южно-Сахалинск",
      departureCity: "Москва",
      actualTime: DateTime(2022, 4, 14, 22, 15),
      sheduledTime: DateTime(2022, 4, 14, 15, 00),
    ),
    Flight(
      id: 7,
      status: FlightStatus.canceled,
      codes: ["lala-321", "hui-1488"],
      arrivalCity: "Хуёвые Луги",
      departureCity: "Южно-Сахалинск",
      actualTime: DateTime(2022, 4, 14, 22, 15),
      sheduledTime: DateTime(2022, 4, 14, 15, 00),
    ),
    Flight(
      id: 4,
      status: FlightStatus.boarding,
      codes: ["lala-321", "hui-1488"],
      arrivalCity: "Москва",
      departureCity: "Южно-Сахалинск",
      actualTime: DateTime(2022, 4, 15, 00, 15),
      sheduledTime: DateTime(2023, 4, 14, 15, 00),
    ),
  ];
}
