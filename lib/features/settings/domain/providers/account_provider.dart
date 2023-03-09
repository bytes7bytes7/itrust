import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/change_personal_info_request/change_personal_info_request.dart';
import '../dto/change_personal_info_response/change_personal_info_response.dart';

abstract class AccountProvider {
  Future<JsonEitherWrapper<ProblemDetails, ChangePersonalInfoResponse>>
      changePersonalInfo(
    ChangePersonalInfoRequest request,
  );
}
