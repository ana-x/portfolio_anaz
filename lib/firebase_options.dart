// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBtIDZm3jEC_GU-KgtmIanAHRB2XXpzWmQ',
    appId: '1:690962924395:web:aebbd1dbad893ee683022e',
    messagingSenderId: '690962924395',
    projectId: 'portfolio-anaz',
    authDomain: 'portfolio-anaz.firebaseapp.com',
    storageBucket: 'portfolio-anaz.appspot.com',
    measurementId: 'G-L71LCGM148',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCJi7y7dxruTE7j5_zKsT6E45FqR739KUA',
    appId: '1:690962924395:android:1e30df5ba22e43d183022e',
    messagingSenderId: '690962924395',
    projectId: 'portfolio-anaz',
    storageBucket: 'portfolio-anaz.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBUTUJFnS6siNqeZdF3gfSBST2I18V7gk0',
    appId: '1:690962924395:ios:ffb45bf2a835a02a83022e',
    messagingSenderId: '690962924395',
    projectId: 'portfolio-anaz',
    storageBucket: 'portfolio-anaz.appspot.com',
    iosBundleId: 'com.example.portfolioAnaz',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBUTUJFnS6siNqeZdF3gfSBST2I18V7gk0',
    appId: '1:690962924395:ios:ffb45bf2a835a02a83022e',
    messagingSenderId: '690962924395',
    projectId: 'portfolio-anaz',
    storageBucket: 'portfolio-anaz.appspot.com',
    iosBundleId: 'com.example.portfolioAnaz',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBtIDZm3jEC_GU-KgtmIanAHRB2XXpzWmQ',
    appId: '1:690962924395:web:8676bad08d86b0f383022e',
    messagingSenderId: '690962924395',
    projectId: 'portfolio-anaz',
    authDomain: 'portfolio-anaz.firebaseapp.com',
    storageBucket: 'portfolio-anaz.appspot.com',
    measurementId: 'G-BKQ42K8XSF',
  );
}