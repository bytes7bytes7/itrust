import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/dto.dart';

abstract class MessageProvider {
  Future<JsonEitherWrapper<ProblemDetails, MessageResponse>> getMessage({
    required String chatID,
    required String messageID,
  });

  Future<JsonEitherWrapper<ProblemDetails, MessagesResponse>> getMessages({
    required String chatID,
    String? lastMessageID,
  });

  Future<JsonEitherWrapper<ProblemDetails, MessageResponse>> sendMessage({
    required SendMessageRequest request,
  });
}
