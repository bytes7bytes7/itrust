import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/providers/auth_status_provider.dart';

@Singleton(as: AuthStatusProvider)
class ProdAuthStatusProvider implements AuthStatusProvider {
  final _controller = BehaviorSubject<bool>();

  @override
  Stream<bool> get onIsLoggedInChanged => _controller.stream;

  @disposeMethod
  @override
  void dispose() {
    _controller.close();
  }

  @override
  void setTo(bool isLoggedIn) {
    _controller.value = isLoggedIn;
  }
}
