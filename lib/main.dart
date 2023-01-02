import 'package:flutter/material.dart';

import 'app.dart';
import 'injector.dart';
import 'logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  const env = String.fromEnvironment('ENV', defaultValue: 'prod');
  const printLogs = bool.fromEnvironment('PRINT_LOGS', defaultValue: false);

  configLogger(printLogs: printLogs);

  configInjector(env: env);

  runApp(const App());
}
