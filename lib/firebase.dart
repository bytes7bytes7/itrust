import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import 'secure/firebase_data.dart';

Future<void> configFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: apiKey,
        appId: appID,
        messagingSenderId: messagingSenderID,
        projectId: projectID,
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
}
