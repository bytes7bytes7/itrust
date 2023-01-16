import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:logging/logging.dart';

import '../infrastructure.dart';

final _logger = Logger('$Coordinator');

abstract class Coordinator {
  const Coordinator({
    required this.navigatorKey,
  });

  final NavigatorKey navigatorKey;

  BuildContext get context {
    final ctx = contextOrNull;

    if (ctx == null) {
      _logger.shout('Context is null');
    }

    return ctx!;
  }

  BuildContext? get contextOrNull => navigatorKey.currentContext;

  GoRouter get goRouter => GoRouter.of(context);
}
