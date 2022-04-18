import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flight_schedule/domain/entities/flight_status.dart';
import 'package:flight_schedule/domain/repositories/flights.dart';

class FlightsRepoMock implements FlightsRepo {
  @override
  Future<List<Flight>> get() {
    return Future.value(List.from(_flights));
  }

  static final List<Flight> _flights = [
    Flight(
      id: 1,
      status: FlightStatus.arrived,
      codes: ["lala-1234"],
      arrivalCity: "Ю-САХАЛИНСК",
      departureCity: "МОСКВА",
      actualTime: DateTime(2022, 4, 14, 10, 15),
      scheduledTime: DateTime(2022, 4, 14, 15, 0),
    ),
    Flight(
      id: 3,
      status: FlightStatus.canceled,
      codes: ["lala-321", "hui-1488"],
      arrivalCity: "Ю-САХАЛИНСК",
      departureCity: "МОСКВА",
      actualTime: DateTime(2022, 4, 14, 22, 15),
      scheduledTime: DateTime(2022, 4, 14, 15, 0),
    ),
    Flight(
      id: 7,
      status: FlightStatus.canceled,
      codes: ["lala-321", "hui-1488"],
      arrivalCity: "ЗАСРАННЫЕ ЛУГИ",
      departureCity: "Ю-САХАЛИНСК",
      actualTime: DateTime(2022, 4, 14, 22, 15),
      scheduledTime: DateTime(2022, 4, 14, 15, 0),
    ),
    Flight(
      id: 4,
      status: FlightStatus.boarding,
      codes: ["lala-321", "hui-1488"],
      arrivalCity: "МОСКВА",
      departureCity: "Ю-САХАЛИНСК",
      actualTime: DateTime(2022, 4, 15, 0, 15),
      scheduledTime: DateTime(2023, 4, 14, 15, 0),
    ),
  ];
}
