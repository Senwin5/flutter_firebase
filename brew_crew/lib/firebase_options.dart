
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
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
    apiKey: 'AIzaSyBlsE2Djn-t44B7lWjEch7LKHx8kJAL-U8',
    appId: '1:359044947491:web:97be3db46daf7d4d885b96',
    messagingSenderId: '359044947491',
    projectId: 'sen-brew-crew',
    authDomain: 'sen-brew-crew.firebaseapp.com',
    storageBucket: 'sen-brew-crew.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCxRcvlZZRUT4YGI5RPHC5PgEZSI5CpqmI',
    appId: '1:359044947491:android:ed3942748278e3d8885b96',
    messagingSenderId: '359044947491',
    projectId: 'sen-brew-crew',
    storageBucket: 'sen-brew-crew.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD-rKmIIqFjwSryBqMsXhs-WoSjW_OnVOU',
    appId: '1:359044947491:ios:a33eb8d112151a9d885b96',
    messagingSenderId: '359044947491',
    projectId: 'sen-brew-crew',
    storageBucket: 'sen-brew-crew.firebasestorage.app',
    iosBundleId: 'com.example.brewCrew',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD-rKmIIqFjwSryBqMsXhs-WoSjW_OnVOU',
    appId: '1:359044947491:ios:a33eb8d112151a9d885b96',
    messagingSenderId: '359044947491',
    projectId: 'sen-brew-crew',
    storageBucket: 'sen-brew-crew.firebasestorage.app',
    iosBundleId: 'com.example.brewCrew',
  );
}
