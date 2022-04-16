import 'package:flight_schedule/presentation/pages/reference_info/templates/plain_reference_info.dart';
import 'package:flutter/material.dart';

class ElectronicBoardingPassPage extends PlainReferenceInfoPage {
  ElectronicBoardingPassPage({Key? key})
      : super(
          key: key,
          title: "Электронный посадочный талон",
          texts: [
            "Пассажиры внутренних рейсов в аэропорту Южно-Сахалинск могут воспользоваться электронным посадочным талоном, который будет отправлен на любой электронный носитель, указанный пассажиром, в результате успешного завершения онлайн-регистрации на сайте авиакомпании.",
            "Обращаем особое внимание, что услуга обслуживания электронного посадочного талона должна быть подтверждена авиакомпанией, обслуживающей рейс.",
            "Электронный посадочный талон содержит штриховой код и краткую информацию для пассажира. Его необходимо сохранить на мобильном электронном устройстве для предъявления в аэропорту и на борту воздушного судна (по запросу) в любой момент и без доступа в Интернет.",
            "Убедитесь, что ваше мобильное электронное устройство, используемое для сохранения электронного посадочного талона, достаточно заряжено.",
            "",
            "Электронный посадочный талон можно сохранить несколькими способами:",
            "•загрузив на свое устройство файл из электронной почты;",
            "•сохранить как фото (не для всех мобильных устройств);",
            "•с помощью приложений авиакомпаний;",
            "•с помощью приложений Passbook или Wallet (только для iOS);",
            "•сохранить в «Загрузки» (для Android).",
            "",
            "Электронный посадочный талон вы предъявляете на экране электронного устройства:",
            "•при прохождении предполетного досмотра;",
            "•на выходе на посадку из накопителя в автобус;",
            "•при посадке в самолет у трапа (по запросу);",
            "•бортпроводникам при входе в самолет (по запросу).",
            "",
            "Если в аэропорту по какой-то причине у вас нет доступа к электронному посадочному талону, вы можете распечатать бумажный посадочный талон на стойке регистрации.",
          ],
        );
}