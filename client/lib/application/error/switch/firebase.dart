/*
exception-codes have been taken from firebase_auth.dart. Not of all are needed. Unneeded exception-codes listed for the record. 
!exception-codes can out of date.
codes:
  account-exists-with-different-credential, //!unused
  custom-token-mismatch, //!unused
  email-already-in-use,
  expired-action-code,
  invalid-action-code,
  invalid-email,
  invalid-credential, //!unused
  invalid-custom-token, //!unused
  invalid-verification-code, //!unused
  invalid-verification-id, //!unused
  operation-not-allowed,
  user-disabled,
  user-not-found,
  weak-password,
  wrong-password,
*/
import 'package:firebase_core/firebase_core.dart';

import '../alert/common.dart';
import '../alert/content.dart';
import '../alert/firebase.dart';

AlertDialogContent switchFirebaseExceptionAlert(FirebaseException e) {
  switch (e.code) {
    case 'email-already-in-use':
      return const EmailAlreadyInUseAlert();
    case 'expired-action-code':
      return const ExpiredActionCodeAlert();
    case 'invalid-action-code':
      return const InvalidActionCodeAlert();
    case 'invalid-email':
      return const InvalidEmailAlert();
    case 'invalid-verification-code':
      return const InvalidVerificationCodeAlert();
    case 'operation-not-allowed':
      return const OperationNotAllowedAlert();
    case 'user-disabled':
      return const UserDisabledAlert();
    case 'user-not-found':
      return const UserNotFoundAlert();
    case 'weak-password':
      return const WeakPasswordAlert();
    case 'wrong-password':
      return const WrongPasswordAlert();
    case 'requires-recent-login':
      return const RequiresRecentLoginAlert();
    case 'too-many-requests':
      return const TooManyRequestsAlert();
    case 'network-request-failed':
      return const NetworkRequestFailedAlert();
    case 'unavailable':
      return const ServerNotRespondingAlert();
    default:
      String? message = e.message;
      final details = (message != null) ? (e.plugin + '/' + e.code + '\n' + message) : (e.plugin + '/' + e.code);
      return UnhandledAlert(details);
  }
}
