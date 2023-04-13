import 'dart:async';

abstract class SyncStore {
  var _queueLength = 0;

  Future<void> perform(
    FutureOr<void> Function() callback, {
    required void Function(bool) setIsLoading,
    required void Function() removeError,
    bool startLoading = true,
  }) async {
    _queueLength++;

    if (startLoading) {
      setIsLoading(true);
    }

    removeError();

    await callback();

    _queueLength--;
    if (_queueLength == 0) {
      setIsLoading(false);
    }
  }

  void doAfterDelay(
    void Function() callback, {
    Duration delay = const Duration(milliseconds: 100),
  }) {
    Future.delayed(delay, () {
      callback();
    });
  }
}
