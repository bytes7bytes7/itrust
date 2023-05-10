import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../common/domain/dto/chat_response/chat_response.dart';
import '../dto/dto.dart';

abstract class CreateMonologueProvider {
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> createChat({
    required CreateMonologueChatRequest request,
  });
}
