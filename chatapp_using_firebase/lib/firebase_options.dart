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
    apiKey: 'AIzaSyDi8NQWW8-ZJamWYCFiwMx-rVFN64VhWC4',
    appId: '1:873426906741:web:8179725176ef3b725ad23c',
    messagingSenderId: '873426906741',
    projectId: 'chatapp-fire-59088',
    authDomain: 'chatapp-fire-59088.firebaseapp.com',
    storageBucket: 'chatapp-fire-59088.appspot.com',
    measurementId: 'G-C9TPXN3F40',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNF2EBq-0OBuQ4GZ4qS1iUrCqi_1RJfsA',
    appId: '1:873426906741:android:9f38bd15c8210c0e5ad23c',
    messagingSenderId: '873426906741',
    projectId: 'chatapp-fire-59088',
    storageBucket: 'chatapp-fire-59088.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsFXtXcV_zHUSXPogCujDvzfEo7nBDPcQ',
    appId: '1:873426906741:ios:4bdcd9e8e25c6f655ad23c',
    messagingSenderId: '873426906741',
    projectId: 'chatapp-fire-59088',
    storageBucket: 'chatapp-fire-59088.appspot.com',
    iosBundleId: 'com.example.chatappUsingFirebase',
  );
}
