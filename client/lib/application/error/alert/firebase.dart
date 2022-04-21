import 'content.dart';

class EmailAlreadyInUseAlert extends AlertDialogContent {
  const EmailAlreadyInUseAlert()
      : super(
          titleForUser: 'E-mail уже использован',
          textForUser: 'Восстановите доступ к аккаунту, привязанному к введённому E-mail, или введите другой E-mail.',
        );
}

class ExpiredActionCodeAlert extends AlertDialogContent {
  const ExpiredActionCodeAlert()
      : super(
          titleForUser: 'Код истёк',
          textForUser: 'Отправьте код повторно.',
        );
}

class InvalidActionCodeAlert extends AlertDialogContent {
  const InvalidActionCodeAlert()
      : super(
          titleForUser: 'Недействительный код',
          textForUser: 'Код неверен или уже использован.',
        );
}

class InvalidEmailAlert extends AlertDialogContent {
  const InvalidEmailAlert()
      : super(
          titleForUser: 'Введённый E-mail невалиден',
          textForUser: 'Проверьте введённый E-mail на наличие некорректных символов',
        );
}

class InvalidVerificationCodeAlert extends AlertDialogContent {
  const InvalidVerificationCodeAlert()
      : super(
          titleForUser: 'Неправильный код подтверждения',
          textForUser: 'Пароль не предоставлен или не соответствует паролю, привязанному к аккаунту.',
        );
}

class OperationNotAllowedAlert extends AlertDialogContent {
  const OperationNotAllowedAlert()
      : super(
          titleForUser: 'Запрещённая операция',
          textForUser: 'Клиент-приложение не согласовано с сервером. Сообщите об ошибке и ожидайте обновления.',
        );
}

class UserDisabledAlert extends AlertDialogContent {
  const UserDisabledAlert()
      : super(
          titleForUser: 'Аккаунт заблокирован',
          textForUser: 'Обратитесь к администратору за комментариями.',
        );
}

class UserNotFoundAlert extends AlertDialogContent {
  const UserNotFoundAlert()
      : super(
          titleForUser: 'Аккаунт не найден',
          textForUser: '''Не найден аккаунт, привязанный к данным реквизитам. Возможные причины:

-Между действиями, требующими авторизации, произошло удаление пользователя.

-Аккаунт не зарегистрирован.

-Аккаунт не привязан к указанным реквизитам.''',
        );
}

class WeakPasswordAlert extends AlertDialogContent {
  const WeakPasswordAlert()
      : super(
          titleForUser: 'Слабый пароль',
          textForUser: 'Добавьте цифр, букв разного регистра.',
        );
}

class WrongPasswordAlert extends AlertDialogContent {
  const WrongPasswordAlert()
      : super(
          titleForUser: 'Неправильный пароль',
          textForUser: 'Пароль неправильный или регистрация проводилась методами не требущими пароля.',
        );
}

class TooManyRequestsAlert extends AlertDialogContent {
  const TooManyRequestsAlert()
      : super(
          titleForUser: 'Подозрительное поведение',
          textForUser:
              'Обнаружено подозрительное поведение. В течении какого-то времени запросы будут заблокированы. Попробуйте позже',
        );
}

class RequiresRecentLoginAlert extends AlertDialogContent {
  const RequiresRecentLoginAlert()
      : super(
          titleForUser: 'Требуется перелогиниться',
          textForUser:
              'Запрошена операция с чувствительными данными, но вход в аккаунт был произведён слишком давно. С целью предотвращения несанкционированного доступа необходимо перелогиниться: выйдите из аккаунта и снова войдите.',
        );
}

class NetworkRequestFailedAlert extends AlertDialogContent {
  const NetworkRequestFailedAlert()
      : super(
          titleForUser: 'Запрос не доставлен',
          textForUser: 'Проверьте соединение с интернетом.',
        );
}

class ServerNotRespondingAlert extends AlertDialogContent {
  const ServerNotRespondingAlert()
      : super(
          titleForUser: 'Сервер недоступен',
          textForUser: 'Неполадки с интернетом или на сервере',
        );
}
