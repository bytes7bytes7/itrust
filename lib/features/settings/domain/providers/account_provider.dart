import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class AccountProvider {
  Future<JsonEitherWrapper<ProblemDetails, ChangePersonalInfoResponse>>
      changePersonalInfo(
    ChangePersonalInfoRequest request,
  );

  Future<JsonEitherWrapper<ProblemDetails, DeviceSessionResponse>>
      getSessions();

  Future<JsonEitherWrapper<ProblemDetails, DeviceSessionResponse>>
      removeSession(
    RemoveSessionRequest request,
  );
}
