import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class UserInfoProvider {
  Future<JsonEitherWrapper<ProblemDetails, UserInfoResponse>> getInfo({
    required String aboutUserID,
  });
}
