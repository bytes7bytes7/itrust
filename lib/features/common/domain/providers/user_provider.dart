import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/get_user_by_id_response/get_user_by_id_response.dart';

abstract class UserProvider {
  Future<JsonEitherWrapper<ProblemDetails, GetUserByIDResponse>> getUserByID(
    String id,
  );
}
