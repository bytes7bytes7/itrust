import 'package:injectable/injectable.dart';
import '../../../feature/chat/application/service/chat_interaction_service.dart';

import '../router/router.dart';

@Singleton(as: ChatInteractionService)
class ChatInteractionServiceImpl implements ChatInteractionService {
  @override
  void onBackPressed() {
    router.pop();
  }
}
