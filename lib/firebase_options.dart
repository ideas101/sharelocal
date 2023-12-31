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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBtM9UBoMJtumwr96urk9omC7Tg9cOUq8w',
    appId: '1:864305891034:web:34d6b88e352f75d82207e3',
    messagingSenderId: '864305891034',
    projectId: 'sharelocal-loc',
    authDomain: 'sharelocal-loc.firebaseapp.com',
    storageBucket: 'sharelocal-loc.appspot.com',
    measurementId: 'G-WJDPWG50TN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCKazqAs14RrTN4e8XilVsCkUAvzzM1B0w',
    appId: '1:864305891034:android:b5ee8dd8b6eb69322207e3',
    messagingSenderId: '864305891034',
    projectId: 'sharelocal-loc',
    storageBucket: 'sharelocal-loc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDnaj3SyGIt8iD-SoPRg1aqQBCWezlH87w',
    appId: '1:864305891034:ios:0551e31b8c563e912207e3',
    messagingSenderId: '864305891034',
    projectId: 'sharelocal-loc',
    storageBucket: 'sharelocal-loc.appspot.com',
    iosClientId: '864305891034-c6kvbhq1k8jcm9k6kfc479rk4dioqdul.apps.googleusercontent.com',
    iosBundleId: 'com.example.sharelocal',
  );
}
