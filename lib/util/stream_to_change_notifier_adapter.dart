import 'dart:async';

import 'package:flutter/foundation.dart';

class StreamToChangeNotifierAdapter extends ChangeNotifier {
  /// Every time the [stream] receives an event the [GoRouter] will refresh its
  /// current route.
  StreamToChangeNotifierAdapter(Stream stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (_) => notifyListeners(),
        );
  }

  late final StreamSubscription _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
