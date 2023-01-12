import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'connection_store.g.dart';

@singleton
class ConnectionStore = _ConnectionStore with _$ConnectionStore;

abstract class _ConnectionStore with Store {
  @observable
  ObservableStream<ConnectivityResult> connection = ObservableStream(
    Connectivity().onConnectivityChanged,
  );
}
