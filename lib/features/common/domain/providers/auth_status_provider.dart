import '../value_objects/user_id/user_id.dart';

abstract class AuthStatusProvider {
  Stream<bool> get onIsLoggedInChanged;

  Stream<UserID?> get onUserIDChanged;

  void dispose();

  void setTo(UserID userID);

  void remove();
}
