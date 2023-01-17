import 'dart:async';

abstract class SyncStore {
  final _loadingQueue = <int>[];
  var _currentQueueId = 0;
  var _isLoading = false;
  var _error = '';

  String get error => _error;

  bool get isLoading => _isLoading;

  Future<void> perform(FutureOr<void> Function() callback) async {
    final id = _currentQueueId++;
    _loadingQueue.add(id);

    _isLoading = true;
    _error = '';

    await callback();

    _loadingQueue.remove(id);
    if (_loadingQueue.isEmpty) {
      _isLoading = false;
    }
  }
}
