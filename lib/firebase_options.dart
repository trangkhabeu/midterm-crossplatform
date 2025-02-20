// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
//  import 'firebase_options.dart';
//  await Firebase.initializeApp(
//    options: DefaultFirebaseOptions.currentPlatform,
//  );
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
    apiKey: 'AIzaSyCL26WQGIn51Lwda0Sgf-wm-cP96sua6ok',
    appId: '1:920967666724:web:1ac5ba5f073fba91d98cb1',
    messagingSenderId: '920967666724',
    projectId: 'crudapp-afb21',
    authDomain: 'crudapp-afb21.firebaseapp.com',
    storageBucket: 'crudapp-afb21.firebasestorage.app',
    measurementId: 'G-JBYWW2KZ3G',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDkep9d56xeVb3PSOyyRzgHhGhias3Bzzc',
    appId: '1:920967666724:android:ace5d47a9293c11bd98cb1',
    messagingSenderId: '920967666724',
    projectId: 'crudapp-afb21',
    storageBucket: 'crudapp-afb21.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD81e211ILI7AD46QZydm96WgeLsAZrx8U',
    appId: '1:920967666724:ios:d1ed22a51393c91fd98cb1',
    messagingSenderId: '920967666724',
    projectId: 'crudapp-afb21',
    storageBucket: 'crudapp-afb21.firebasestorage.app',
    iosBundleId: 'com.example.crudApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD81e211ILI7AD46QZydm96WgeLsAZrx8U',
    appId: '1:920967666724:ios:d1ed22a51393c91fd98cb1',
    messagingSenderId: '920967666724',
    projectId: 'crudapp-afb21',
    storageBucket: 'crudapp-afb21.firebasestorage.app',
    iosBundleId: 'com.example.crudApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCL26WQGIn51Lwda0Sgf-wm-cP96sua6ok',
    appId: '1:920967666724:web:c241ddba48c91183d98cb1',
    messagingSenderId: '920967666724',
    projectId: 'crudapp-afb21',
    authDomain: 'crudapp-afb21.firebaseapp.com',
    storageBucket: 'crudapp-afb21.firebasestorage.app',
    measurementId: 'G-PWDSLXBVBM',
  );
}
