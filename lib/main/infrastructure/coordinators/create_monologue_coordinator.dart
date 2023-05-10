import 'package:injectable/injectable.dart';

import '../../../features/chat_list/application/coordinators/create_monologue_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: CreateMonologueCoordinator)
class ProdCreateMonologueCoordinator extends Coordinator
    implements CreateMonologueCoordinator {
  ProdCreateMonologueCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const ChatListRoute().go(goRouter);
    }
  }

  @override
  void openChat({required String chatID}) {
    ChatRoute(chatID: chatID).go(goRouter);
  }
}
