import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get_it/get_it.dart';

import 'feature/auth/application/store/auth/auth_store.dart';
import 'firebase.dart';
import 'logger.dart';
import 'main/infrastructure/di/injector.dart';
import 'main/presentation/app.dart';

Future<void> main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  const env = String.fromEnvironment('ENV', defaultValue: 'prod');
  const printLogs = bool.fromEnvironment('PRINT_LOGS', defaultValue: false);

  configLogger(printLogs: printLogs);

  await configFirebase();

  configInjector(env: env);

  await checkAuth();

  FlutterNativeSplash.remove();

  runApp(
    const App(),
  );
}

Future<void> checkAuth() async {
  final authStore = GetIt.instance.get<AuthStore>();

  await authStore.init();
}
