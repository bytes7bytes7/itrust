import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../common/domain/dto/chat_response/chat_response.dart';
import '../../../common/domain/dto/users_response/users_response.dart';
import '../dto/dto.dart';

abstract class CreateChatProvider {
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> createMonologue({
    required CreateMonologueChatRequest request,
  });

  Future<JsonEitherWrapper<ProblemDetails, UsersResponse>> getChatPartners({
    String? lastUserID,
  });

  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> createGroup({
    required CreateGroupChatRequest request,
  });
}
