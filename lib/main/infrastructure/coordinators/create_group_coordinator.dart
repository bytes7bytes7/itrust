import 'package:injectable/injectable.dart';

import '../../../features/chat_list/application/coordinators/create_group_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: CreateGroupCoordinator)
class ProdCreateGroupCoordinator extends Coordinator
    implements CreateGroupCoordinator {
  ProdCreateGroupCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const ChatListRoute().go(goRouter);
    }
  }

  @override
  void onNextButtonPressed() {
    const CreateGroupInfoRoute().push(goRouter);
  }

  @override
  void onCreateChatButtonPressed({required String chatID}) {
    ChatRoute(chatID: chatID).go(goRouter);
  }
}
