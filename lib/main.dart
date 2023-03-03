import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logging/logging.dart';
import 'package:mobx/mobx.dart';
import 'package:url_strategy/url_strategy.dart';

import 'main/main.dart';

Future<void> main() async {
  FlutterNativeSplash.preserve(
    widgetsBinding: WidgetsFlutterBinding.ensureInitialized(),
  );

  const env = String.fromEnvironment('ENV', defaultValue: 'test');
  const printLogs = bool.fromEnvironment('PRINT_LOGS', defaultValue: true);

  _configLogger(printLogs: printLogs);
  setPathUrlStrategy();
  _configMobX(env: env);
  await configInjector(env: env);

  FlutterNativeSplash.remove();

  runApp(
    const App(),
  );
}

void _configLogger({required bool printLogs}) {
  if (printLogs && kDebugMode) {
    Logger.root.level = Level.ALL;
    Logger.root.onRecord.listen((record) {
      // ignore: avoid_print
      print(
        '[${record.time}] '
        '${record.level.name} | '
        '${record.loggerName}: '
        '${record.message}',
      );
    });
  }
}

void _configMobX({required String env}) {
  final logger = Logger('MobX');

  if (env == 'test') {
    mainContext.config = mainContext.config.clone(
      isSpyEnabled: true,
    );

    mainContext.spy(logger.info);
  }
}
