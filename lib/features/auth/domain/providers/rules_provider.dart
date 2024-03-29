import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class RulesProvider {
  Future<JsonEitherWrapper<ProblemDetails, RulesResponse>> getRules();
}
