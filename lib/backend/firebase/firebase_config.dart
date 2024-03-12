import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCLg-r0izwSv7A8lL57FtCzj_nREc6f1PI",
            authDomain: "devashreeshuklaportfolio.firebaseapp.com",
            projectId: "devashreeshuklaportfolio",
            storageBucket: "devashreeshuklaportfolio.appspot.com",
            messagingSenderId: "233097777589",
            appId: "1:233097777589:web:264dd3a296f290fc2989fc",
            measurementId: "G-X0442PK8FF"));
  } else {
    await Firebase.initializeApp();
  }
}
