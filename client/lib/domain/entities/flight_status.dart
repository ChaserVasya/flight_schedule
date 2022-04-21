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
  String toRUString() {
    switch (this) {
      case FlightStatus.noValue:
        return "-";
      case FlightStatus.canceled:
        return "Отменён";
      case FlightStatus.delay:
        return "Задержан";

      case FlightStatus.inFlight:
        return "В полёте";
      case FlightStatus.arrived:
        return "Прибыл";

      case FlightStatus.checkIn:
        return "Регистрация";
      case FlightStatus.boarding:
        return "Посадка";
      case FlightStatus.departed:
        return "Вылетел";
    }
  }
}
