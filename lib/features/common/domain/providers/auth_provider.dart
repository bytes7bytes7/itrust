import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class AuthProvider {
  Future<RegisterResponse> register(RegisterRequest request);

  Future<LogInResponse> logIn(LogInRequest request);

  Future<JsonEitherWrapper<ProblemDetails, RegisterResponse>> some(
    RegisterRequest request,
  );
}
