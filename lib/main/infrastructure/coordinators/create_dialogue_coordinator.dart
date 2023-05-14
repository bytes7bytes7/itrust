import 'package:injectable/injectable.dart';

import '../../../features/chat_list/application/coordinators/create_dialogue_coordinator.dart';
import '../../../features/common/domain/value_objects/chat_id/chat_id.dart';
import '../../../features/common/domain/value_objects/user_id/user_id.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: CreateDialogueCoordinator)
class ProdCreateDialogueCoordinator extends Coordinator
    implements CreateDialogueCoordinator {
  ProdCreateDialogueCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const ChatListRoute().go(goRouter);
    }
  }

  @override
  void onUserPressed({
    required String firstUserID,
    required String secondUserID,
  }) {
    final chatID = ChatID.createDialogue(
      UserID.fromString(firstUserID),
      UserID.fromString(secondUserID),
    );

    ChatRoute(chatID: chatID.str).push(goRouter);
  }
}
