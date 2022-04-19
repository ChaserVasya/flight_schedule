enum FlightStatus {
  //Common
  noValue,
  canceled,
  delay,

  //Arriving
  inFlight,
  arrived,

  //Departing
  checkIn,
  boarding,
  departed,
}

extension FlightStatusUtils on FlightStatus {
  String toLocalisedString() {
    switch (this) {
      case FlightStatus.noValue:
        return "-";
      case FlightStatus.canceled:
        return "Отменено";
      case FlightStatus.delay:
        return "Задержан до";

      case FlightStatus.inFlight:
        return "В полёте";
      case FlightStatus.arrived:
        return "Прибыл в";

      case FlightStatus.checkIn:
        return "Регистрация";
      case FlightStatus.boarding:
        return "Посадка";
      case FlightStatus.departed:
        return "Отбыл";
    }
  }
}
