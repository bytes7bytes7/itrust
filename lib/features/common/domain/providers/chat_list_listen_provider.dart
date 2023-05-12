import 'package:problem_details/problem_details.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../dto/chat_event_response/chat_event_response.dart';

abstract class ChatListListenProvider {
  Future<Stream<JsonEitherWrapper<ProblemDetails, ChatEventResponse>>>
      listenChatEvents();
}
