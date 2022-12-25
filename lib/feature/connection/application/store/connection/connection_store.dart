import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mobx/mobx.dart';

part 'connection_store.g.dart';

class ConnectionStore = _ConnectionStore with _$ConnectionStore;

abstract class _ConnectionStore with Store {
  @observable
  ObservableStream<ConnectivityResult> connection = ObservableStream(
    Connectivity().onConnectivityChanged,
  );
}
