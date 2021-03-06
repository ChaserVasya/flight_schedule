// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAxytEN-BNBqbpZT6grhhaKhV89_uHsAts',
    appId: '1:338343835175:web:a64aecc05298badccf8002',
    messagingSenderId: '338343835175',
    projectId: 'flight-schedule-1',
    authDomain: 'flight-schedule-1.firebaseapp.com',
    storageBucket: 'flight-schedule-1.appspot.com',
    measurementId: 'G-NMGFHQK77J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCUSf0r40Vy2hipQNntpqZhCDNsEzaqFx4',
    appId: '1:338343835175:android:ff204624a446b045cf8002',
    messagingSenderId: '338343835175',
    projectId: 'flight-schedule-1',
    storageBucket: 'flight-schedule-1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDGVJ1Nq56ixY6yISGkhFdNMJCaGBqbH2Y',
    appId: '1:338343835175:ios:f0ae816586b6f4fecf8002',
    messagingSenderId: '338343835175',
    projectId: 'flight-schedule-1',
    storageBucket: 'flight-schedule-1.appspot.com',
    iosClientId: '338343835175-qev7q31eqnpu71kt7a40o9s5fhogl3u4.apps.googleusercontent.com',
    iosBundleId: 'com.alex.flight.schedule',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDGVJ1Nq56ixY6yISGkhFdNMJCaGBqbH2Y',
    appId: '1:338343835175:ios:c5f9652c4e6d8671cf8002',
    messagingSenderId: '338343835175',
    projectId: 'flight-schedule-1',
    storageBucket: 'flight-schedule-1.appspot.com',
    iosClientId: '338343835175-odoj4nbkp2eo9orgfp2ljno3fnbrr16m.apps.googleusercontent.com',
    iosBundleId: 'com.alex.flight.schedu',
  );
}
