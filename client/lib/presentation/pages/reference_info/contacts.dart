import 'package:flight_schedule/presentation/pages/reference_info/templates/plain_reference_info.dart';
import 'package:flutter/material.dart';

class ContactsPage extends PlainReferenceInfoPage {
  ContactsPage({Key? key})
      : super(
          key: key,
          title: "Контакты",
          texts: [
            "Акционерное общество «Аэропорт Южно‐Сахалинск»",
            "693014, Сахалинская область, г. Южно-Сахалинск, ул. Ивана Куропатко, дом 21.",
            "",
            "Приемная",
            "+7 (4242) 788–311, 788–319",
            "",
            "Отдел делопроизводства	",
            "+7 (4242) 788–124, 788–056",
            "",
            "Факс",
            "+7 (4242) 788–385, 788–525",
            "",
            "Электронный адрес",
            "ysa@airportus.ru",
            "",
            "Веб‐сайт",
            "airportus.ru",
          ],
        );
}
