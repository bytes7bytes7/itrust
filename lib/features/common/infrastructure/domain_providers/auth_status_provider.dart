import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/providers/auth_status_provider.dart';
import '../../domain/value_objects/user_id/user_id.dart';

@Singleton(as: AuthStatusProvider)
class ProdAuthStatusProvider implements AuthStatusProvider {
  final _controller = BehaviorSubject<UserID?>();

  @override
  Stream<bool> get onIsLoggedInChanged =>
      _controller.stream.map((e) => e != null);

  @override
  Stream<UserID?> get onUserIDChanged => _controller.stream;

  @disposeMethod
  @override
  void dispose() {
    _controller.close();
  }

  @override
  void setTo(UserID userID) {
    _controller.add(userID);
  }

  @override
  void remove() {
    _controller.add(null);
  }
}
