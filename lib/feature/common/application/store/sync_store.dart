import 'dart:async';

abstract class SyncStore {
  final _loadingQueue = <int>[];
  var _currentQueueId = 0;

  Future<void> perform(
    FutureOr<void> Function() callback, {
    required void Function(bool) setIsLoading,
    required void Function(String) setError,
  }) async {
    final id = _currentQueueId++;
    _loadingQueue.add(id);

    setIsLoading(true);
    setError('');

    await callback();

    _loadingQueue.remove(id);
    if (_loadingQueue.isEmpty) {
      _currentQueueId = 0;

      setIsLoading(false);
    }
  }
}
