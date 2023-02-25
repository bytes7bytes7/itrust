import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class AuthProvider {
  Future<JsonEitherWrapper<ProblemDetails, RegisterResponse>> register(
    RegisterRequest request,
  );

  Future<JsonEitherWrapper<ProblemDetails, LogInResponse>> logIn(
    LogInRequest request,
  );
}
