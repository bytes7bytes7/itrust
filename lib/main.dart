import 'package:flutter/material.dart';

import 'logger.dart';
import 'main/infrastructure/di/injector.dart';
import 'main/presentation/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  const env = String.fromEnvironment('ENV', defaultValue: 'prod');
  const printLogs = bool.fromEnvironment('PRINT_LOGS', defaultValue: false);

  configLogger(printLogs: printLogs);

  configInjector(env: env);

  runApp(
    const App(),
  );
}
