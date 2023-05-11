import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../common/domain/dto/chat_response/chat_response.dart';

abstract class ChatProvider {
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> getChat({
    required String id,
  });
}
