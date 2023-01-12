import 'package:flutter/material.dart';

import 'firebase.dart';
import 'logger.dart';
import 'main/infrastructure/di/injector.dart';
import 'main/presentation/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const env = String.fromEnvironment('ENV', defaultValue: 'prod');
  const printLogs = bool.fromEnvironment('PRINT_LOGS', defaultValue: false);

  configLogger(printLogs: printLogs);

  configInjector(env: env);

  await configFirebase();

  runApp(
    const App(),
  );
}
