import 'package:injectable/injectable.dart';

import '../../../features/chat/application/coordinators/chat_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: ChatCoordinator)
class ProdChatCoordinator extends Coordinator implements ChatCoordinator {
  ProdChatCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const ChatListRoute().go(goRouter);
    }
  }
}
