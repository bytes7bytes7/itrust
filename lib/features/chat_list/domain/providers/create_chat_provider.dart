import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../common/domain/dto/chat_response/chat_response.dart';
import '../../../common/domain/dto/users_response/users_response.dart';
import '../dto/dto.dart';

abstract class CreateChatProvider {
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> createChat({
    required CreateMonologueChatRequest request,
  });

  Future<JsonEitherWrapper<ProblemDetails, UsersResponse>> getChatPartners({
    String? lastUserID,
  });
}
