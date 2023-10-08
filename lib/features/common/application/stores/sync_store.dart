import 'dart:async';
import 'dart:collection';

abstract class SyncStore {
  final _queue = HashMap<String, int>();

  Future<void> perform(
    FutureOr<void> Function() callback, {
    required void Function(bool) setIsLoading,
    required void Function() removeError,
    bool startLoading = true,
    String queueKey = '',
  }) async {
    final beforeV  = _queue[queueKey]  ?? 0;
    _queue[queueKey] = beforeV + 1;

    if (startLoading) {
      setIsLoading(true);
    }

    removeError();

    await callback();

    final afterV = _queue[queueKey] ?? 0;
    _queue[queueKey] = afterV - 1;
    if ((_queue[queueKey] ?? 0) == 0) {
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
