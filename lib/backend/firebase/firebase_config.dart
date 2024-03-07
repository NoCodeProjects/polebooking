import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD2tl9al_FJaZNOTpC3QYObTLkCvAFRTHM",
            authDomain: "pole-room-booking-9e2let.firebaseapp.com",
            projectId: "pole-room-booking-9e2let",
            storageBucket: "pole-room-booking-9e2let.appspot.com",
            messagingSenderId: "159215718970",
            appId: "1:159215718970:web:ebfe6b4bb89bac45c61b03"));
  } else {
    await Firebase.initializeApp();
  }
}
