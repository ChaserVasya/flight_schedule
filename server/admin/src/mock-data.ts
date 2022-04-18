import {Flight, FlightStatus} from "./entities/flight.js";

export const flights: Array<Flight> = [
  new Flight({
    id: 1,
    status: FlightStatus.arrived,
    codes: ["lala-1234"],
    arrivalCity: "Ю-САХАЛИНСК",
    departureCity: "МОСКВА",
    actualTime: new Date(2022, 4, 14, 10, 15),
    scheduledTime: new Date(2022, 4, 14, 15, 0),
  }),
  new Flight({
    id: 3,
    status: FlightStatus.canceled,
    codes: ["lala-321", "hui-1488"],
    arrivalCity: "Ю-САХАЛИНСК",
    departureCity: "МОСКВА",
    actualTime: new Date(2022, 4, 14, 15, 0),
    scheduledTime: new Date(2022, 4, 14, 15, 0),
  }),
  new Flight({
    id: 7,
    status: FlightStatus.canceled,
    codes: ["lala-321", "hui-1488"],
    arrivalCity: "ЗАСРАННЫЕ ЛУГИ",
    departureCity: "Ю-САХАЛИНСК",
    actualTime: new Date(2022, 4, 14, 22, 15),
    scheduledTime: new Date(2022, 4, 14, 15, 0),
  }),
  new Flight({
    id: 4,
    status: FlightStatus.boarding,
    codes: ["lala-321", "hui-1488"],
    arrivalCity: "МОСКВА",
    departureCity: "Ю-САХАЛИНСК",
    actualTime: new Date(2022, 4, 15, 0, 15),
    scheduledTime: new Date(2023, 4, 14, 15, 0),
  }),
];
