import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/message_event_response/message_event_response.dart';

abstract class ChatListenProvider {
  Future<Stream<JsonEitherWrapper<ProblemDetails, MessageEventResponse>>>
      listenMessageEvents({
    required String chatID,
  });
}
