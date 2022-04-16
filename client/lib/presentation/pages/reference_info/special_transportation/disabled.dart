import 'package:flight_schedule/presentation/pages/reference_info/templates/formatted_text.dart';
import 'package:flight_schedule/presentation/templates/pages/page.dart';
import 'package:flutter/material.dart';

class DisabledTransportationPage extends StatelessWidget {
  const DisabledTransportationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      title: "Транспортировка инвалидов",
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(texts1.length, (i) => FormattedText(texts1[i])),
          ),
          const Image(image: AssetImage("assets/images/invalid_1.jpg")),
          const Image(image: AssetImage("assets/images/invalid_2.jpg")),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(texts2.length, (i) => FormattedText(texts2[i])),
          ),
          const Image(image: AssetImage("assets/images/invalid_3.jpg")),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(texts3.length, (i) => FormattedText(texts3[i])),
          ),
        ],
      ),
    );
  }

  static const List<String> texts1 = [
    "При бронировании и покупке авиабилета обязательно сообщайте, какие специальные услуги и помощь Вам потребуется в аэропорту и во время полета. О необходимости этих услуг следует сообщить авиаперевозчику или агенту по продаже билетов во время заказа авиабилетов, но не позднее, чем за 48 часов до вылета.",
    "Обязательно уточните время прохождения регистрации при покупке авиабилета.",
    "Как правило, регистрация в аэропорту «Южно‐Сахалинск» начинается:",
    "- на внутренних рейсах – за 1,5-2 часа до вылета;",
    "- на международных рейсах – за 2,5 часа до вылета;"
        "Для Вашего удобства в аэропорту «Южно‐Сахалинск» на привокзальной площади созданы специальные парковочные места, обозначенные пиктограммами, пандусы."
  ];

  static const List<String> texts2 = [
    "Пассажир с ограниченными возможностями или его сопровождающий по прибытии в аэропорт должны сообщить о своем прибытии по телефону, указанному на стенде, расположенном на привокзальной площади или обратиться в справочное бюро.",
    "788–363 – информирование пассажиров с ограниченными возможностями здоровья",
    "788–390 – справочное бюро",
    "788–228 – служба перевозок ЗАО «Аэропорт-Сервис»",
    "788–032 – служба перевозок а/к «Аврора»",
  ];

  static const List<String> texts3 = [
    "В случае необходимости, пассажиру данной категории будут оказаны следующие услуги:",
    "- помощь при перемещении до аэровокзала, при регистрации на рейс, оформлении багажа и прохождении предполетного досмотра;",
    "- содействие при посадке (высадке) в (из) самолета, в том числе с помощью специального подъемного устройства (амбулифта);",
    "- предоставление специальных средств для передвижения (кресла‐коляски).",
  ];
}
