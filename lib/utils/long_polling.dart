import 'dart:async';

import 'package:rxdart/rxdart.dart';

class LongPolling<T> {
  LongPolling(this.callback);

  final FutureOr<T> Function() callback;

  Stream<T> get stream => _controller.stream;

  final _controller = BehaviorSubject<T>();
  var _working = false;
  var _isPolling = false;

  void start() {
    _working = true;
    _polling();
  }

  void stop() {
    _working = false;
  }

  void dispose() {
    _controller.close();
  }

  Future<void> _polling() async {
    if (_isPolling) {
      return;
    }

    _isPolling = true;

    while (_working) {
      try {
        final response = await callback();
        _controller.add(response);
      } catch (e) {
        //
      }
    }

    _isPolling = false;
  }
}
