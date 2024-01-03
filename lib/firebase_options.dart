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
    apiKey: 'AIzaSyBzNMsB-BDHOjfZXZ6dmCVetRDINkwMroQ',
    appId: '1:802496698056:web:b090d963f76741107377fd',
    messagingSenderId: '802496698056',
    projectId: 'ecommerce-e363b',
    authDomain: 'ecommerce-e363b.firebaseapp.com',
    storageBucket: 'ecommerce-e363b.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB9_9a2rmhhK6eARuzCO3vTQheer3ovn_k',
    appId: '1:802496698056:android:f660f13986e832ca7377fd',
    messagingSenderId: '802496698056',
    projectId: 'ecommerce-e363b',
    storageBucket: 'ecommerce-e363b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnu0UmSU4Srl_B7WKvTL4ZD1z-GOiULxU',
    appId: '1:802496698056:ios:7292c6734a4595bb7377fd',
    messagingSenderId: '802496698056',
    projectId: 'ecommerce-e363b',
    storageBucket: 'ecommerce-e363b.appspot.com',
    iosBundleId: 'com.example.youtubeEcommerce',
  );
}
