import 'package:flight_schedule/presentation/templates/pages/page.dart';
import 'package:flutter/material.dart';

import 'templates/formatted_text.dart';

class HowToGetTherePage extends StatelessWidget {
  const HowToGetTherePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: "Как добраться",
      child: ListView(
        children: const [
          FormattedText(
              "Аэропорт «Южно‐Сахалинск» расположен в планировочном районе Хомутово на южной окраине областного центра. Из города вы можете доехать на маршрутных автобусах № 63, № 3, № 8 до конечной остановки или на такси."),
          FormattedText(""),
          FormattedText("Время до города: 10–30 минут"),
          FormattedText(""),
          Image(image: AssetImage("assets/images/how_to_get_there.png")),
        ],
      ),
    );
  }
}
