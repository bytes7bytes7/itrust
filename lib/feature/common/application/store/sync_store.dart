import 'dart:async';

abstract class SyncStore {
  final _loadingQueue = <int>[];
  var _currentQueueId = 0;

  Future<void> perform(FutureOr<void> Function() callback) async {
    final id = _currentQueueId++;
    _loadingQueue.add(id);

    setIsLoading(true);
    setError('');

    await callback();

    _loadingQueue.remove(id);
    if (_loadingQueue.isEmpty) {
      setIsLoading(false);
    }
  }

  void setIsLoading(bool value);

  void setError(String value);
}
