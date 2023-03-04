import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/refresh_token_request/refresh_token_request.dart';
import '../dto/refresh_token_response/refresh_token_response.dart';

abstract class KeepFreshTokenProvider {
  Future<JsonEitherWrapper<ProblemDetails, RefreshTokenResponse>> refreshToken(
    RefreshTokenRequest request,
  );
}
