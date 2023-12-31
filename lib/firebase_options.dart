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
    apiKey: 'AIzaSyBGoQ6TP8wRaqA9xmAbJZ5Zp8XGd9WjxFk',
    appId: '1:276338606197:web:4e2f06a365c9b76939383c',
    messagingSenderId: '276338606197',
    projectId: 'lookadoc-292b6',
    authDomain: 'lookadoc-292b6.firebaseapp.com',
    storageBucket: 'lookadoc-292b6.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWuUoLNFyZrgr8fUlrqia86pDwGXbnCjA',
    appId: '1:276338606197:android:8a5ec52d6d11bf9639383c',
    messagingSenderId: '276338606197',
    projectId: 'lookadoc-292b6',
    storageBucket: 'lookadoc-292b6.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDupjEwEMHQCq7QVHPvp5PRxnu1E6cNvq0',
    appId: '1:276338606197:ios:9514526c1f8e09eb39383c',
    messagingSenderId: '276338606197',
    projectId: 'lookadoc-292b6',
    storageBucket: 'lookadoc-292b6.appspot.com',
    iosBundleId: 'com.juliusbiascan.lookadoc',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDupjEwEMHQCq7QVHPvp5PRxnu1E6cNvq0',
    appId: '1:276338606197:ios:78246e0fbca897bd39383c',
    messagingSenderId: '276338606197',
    projectId: 'lookadoc-292b6',
    storageBucket: 'lookadoc-292b6.appspot.com',
    iosBundleId: 'com.juliusbiascan.lookadoc.RunnerTests',
  );
}
