import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/message_response/message_response.dart';

abstract class MessageProvider {
  Future<JsonEitherWrapper<ProblemDetails, MessageResponse>> getMessage({
    required String chatID,
    required String messageID,
  });
}
