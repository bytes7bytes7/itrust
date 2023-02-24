import '../dto/dto.dart';

abstract class AuthProvider {
  Future<RegisterResponse> register(RegisterRequest request);

  Future<LogInResponse> logIn(LogInRequest request);
}
