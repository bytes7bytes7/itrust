import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';
import 'package:rxdart/rxdart.dart';

import '../dto/dto.dart';
import '../entities/user/user.dart';
import '../providers/auth_provider.dart';
import '../repositories/end_user_repository.dart';

@singleton
class AuthService {
  AuthService({
    required AuthProvider authProvider,
    required EndUserRepository endUserRepository,
    required Mapster mapster,
  })  : _authProvider = authProvider,
        _endUserRepository = endUserRepository,
        _mapster = mapster;

  final AuthProvider _authProvider;
  final EndUserRepository _endUserRepository;
  final Mapster _mapster;
  late bool _isLoggedIn;
  final _isLoggedInController = BehaviorSubject<bool>();

  bool get isLoggedIn => _isLoggedIn;

  Stream<bool> get onIsLoggedInChanged => _isLoggedInController.stream;

  @PostConstruct(preResolve: true)
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

    final response = await _authProvider.some(request);

    // TODO: match problem with error

    response.value.fold(
      (l) => null,
      (r) => null,
    );

    // final user = _mapster.map1(response, To<EndUser>());
    //
    // _isLoggedInController.add(user);
    //
    // await _endUserRepository.add(user);
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
