import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

void configLogger({required bool printLogs}) {
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
