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
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCGIl4Nvyij_E4VYtVjsXFQ3vgTgjjsJ88',
    appId: '1:493973749147:web:449baaa2c4598ffc08f53e',
    messagingSenderId: '493973749147',
    projectId: 'museum-artifacts',
    authDomain: 'museum-artifacts.firebaseapp.com',
    storageBucket: 'museum-artifacts.appspot.com',
    measurementId: 'G-8X8LDZ2043',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD2WsTp_HOITIlQHXXza2N9JfaxXdnyjIk',
    appId: '1:493973749147:android:e69e8e2924a23d0408f53e',
    messagingSenderId: '493973749147',
    projectId: 'museum-artifacts',
    storageBucket: 'museum-artifacts.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAn-ZLC9M9EH-qrA5LCHjcx0mYk_Aiv_54',
    appId: '1:493973749147:ios:1193b9c16a9ca1c708f53e',
    messagingSenderId: '493973749147',
    projectId: 'museum-artifacts',
    storageBucket: 'museum-artifacts.appspot.com',
    iosClientId: '493973749147-gappml39crlb35ablmk0pfpo2etrkn0u.apps.googleusercontent.com',
    iosBundleId: 'com.example.museumApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAn-ZLC9M9EH-qrA5LCHjcx0mYk_Aiv_54',
    appId: '1:493973749147:ios:dbe38da0b3cb5b4d08f53e',
    messagingSenderId: '493973749147',
    projectId: 'museum-artifacts',
    storageBucket: 'museum-artifacts.appspot.com',
    iosClientId: '493973749147-fv8ctqj5478dcsnhirgcadkkj9hp4o1k.apps.googleusercontent.com',
    iosBundleId: 'com.example.museumApp.RunnerTests',
  );
}
