import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../dto/dto.dart';
import '../entities/user/user.dart';
import '../exceptions/exceptions.dart';
import '../providers/auth_exception_provider.dart';
import '../providers/auth_provider.dart';
import '../repositories/end_user_repository.dart';
import '../value_objects/user_id/user_id.dart';
import 'token_service.dart';

@singleton
class AuthService {
  AuthService({
    required TokenService tokenService,
    required AuthProvider authProvider,
    required EndUserRepository endUserRepository,
    required AuthExceptionProvider authExceptionProvider,
  })  : _tokenService = tokenService,
        _authProvider = authProvider,
        _endUserRepository = endUserRepository,
        _authExceptionProvider = authExceptionProvider;

  final TokenService _tokenService;
  final AuthProvider _authProvider;
  final EndUserRepository _endUserRepository;
  final AuthExceptionProvider _authExceptionProvider;
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

    final response = await _authProvider.register(request);

    response.value.fold(
      (l) {
        _isLoggedInController.add(false);

        if (l.title == _authExceptionProvider.emailIsAlreadyInUse) {
          throw const EmailIsAlreadyInUse();
        } else {
          throw Exception();
        }
      },
      (r) {
        _isLoggedInController.add(true);

        _tokenService.setToken(r.token);

        // TODO: implement
        _endUserRepository.setMe(
          EndUser(
            id: UserID(r.id.values.first as String),
            avatarUrls: [],
            email: r.email,
          ),
        );
      },
    );
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

    response.value.fold(
      (l) {
        _isLoggedInController.add(false);

        if (l.title == _authExceptionProvider.invalidCredentials) {
          throw const InvalidCredentials();
        } else {
          throw Exception();
        }
      },
      (r) {
        _isLoggedInController.add(true);

        _tokenService.setToken(r.token);

        // TODO: implement
        _endUserRepository.setMe(
          EndUser(
            id: UserID(r.id.values.first as String),
            avatarUrls: [],
            email: r.email,
          ),
        );
      },
    );
  }

  Future<void> logOut() async {
    const request = LogOutRequest();

    final response = await _authProvider.logOut(request);

    response.value.fold(
      (l) {
        throw Exception();
      },
      (r) {
        _isLoggedInController.add(false);

        _tokenService.removeToken();

        _endUserRepository.removeMe();
      },
    );
  }
}
