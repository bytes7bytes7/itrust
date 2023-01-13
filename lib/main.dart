import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';

import 'feature/auth/application/store/auth/auth_store.dart';
import 'logger.dart';
import 'main/infrastructure/di/injector.dart';
import 'main/presentation/app.dart';
import 'secure/firebase_data.dart';

Future<void> main() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );

  const env = String.fromEnvironment('ENV', defaultValue: 'prod');
  const printLogs = bool.fromEnvironment('PRINT_LOGS', defaultValue: false);

  configLogger(printLogs: printLogs);
  _configMobX();
  await _configFirebase();
  configInjector(env: env);
  await _checkAuth();

  FlutterNativeSplash.remove();

  runApp(
    const App(),
  );
}

void _configMobX() {
  final logger = Logger('MobX');

  mainContext.config = mainContext.config.clone(
    isSpyEnabled: true,
  );

  mainContext.spy(logger.info);
}

Future<void> _configFirebase() async {
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

Future<void> _checkAuth() async {
  final authStore = GetIt.instance.get<AuthStore>();

  await authStore.init();
}
