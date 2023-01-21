import 'dart:async';

abstract class SyncStore {
  var _queueLength = 0;

  Future<void> perform(
    FutureOr<void> Function() callback, {
    required void Function(bool) setIsLoading,
    required void Function() removeError,
  }) async {
    _queueLength++;

    setIsLoading(true);
    removeError();

    await callback();

    _queueLength--;
    if (_queueLength == 0) {
      setIsLoading(false);
    }
  }
}
