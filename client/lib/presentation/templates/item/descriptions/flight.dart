import 'package:flight_schedule/domain/entities/flight.dart';
import 'package:flutter/material.dart';

abstract class FlightDescription extends StatelessWidget {
  const FlightDescription({Key? key, required this.flight}) : super(key: key);

  final Flight flight;

  List<Widget> leftColumn() {
    const yuzhnoSakhalinskTextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );

    const otherCityTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
    );

    final arrivalCity = Text(
      flight.arrivalCity,
      style: flight.arrivalCity == "Ю-САХАЛИНСК" ? yuzhnoSakhalinskTextStyle : otherCityTextStyle,
    );

    final departureCity = Text(
      flight.departureCity,
      style: flight.departureCity == "Ю-САХАЛИНСК" ? yuzhnoSakhalinskTextStyle : otherCityTextStyle,
    );

    return [
      departureCity,
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: arrivalCity,
      ),
      Text(flight.codes.join(", ")),
    ];
  }

  List<Widget> rightColumn();

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: leftColumn(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: rightColumn(),
          ),
        ],
      ),
    );
  }
}
