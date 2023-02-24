import 'dart:async';

import 'package:injectable/injectable.dart';

import '../dto/dto.dart';
import '../providers/auth_provider.dart';

@singleton
class AuthService {
  AuthService({required AuthProvider authProvider})
      : _authProvider = authProvider;

  final AuthProvider _authProvider;
  late bool _isLoggedIn;
  final _isLoggedInController = StreamController<bool>();

  bool get isLoggedIn => _isLoggedIn;

  Stream<bool> get onIsLoggedInChanged => _isLoggedInController.stream;

  @postConstruct
  Future<void> init() async {
    // TODO: add init
    _isLoggedIn = false;
  }

  @disposeMethod
  void dispose() {
    _isLoggedInController.close();
  }

  Future<void> register({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
  }) async {
    final request = RegisterRequest(
      email: email,
      password: password,
      firstName: firstName,
      lastName: lastName,
    );

    final response = await _authProvider.register(request);

    // TODO: do more stuff
  }

  Future<void> logIn({
    required String email,
    required String password,
  }) async {
    final request = LogInRequest(
      email: email,
      password: password,
    );

    final response = await _authProvider.logIn(request);

    // TODO: do more stuff
  }

  Future<void> logOut() async {
    // TODO: implement
  }
}
