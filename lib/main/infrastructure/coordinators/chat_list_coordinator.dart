import 'package:injectable/injectable.dart';

import '../../../features/chat_list/application/coordinators/chat_list_coordinator.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: ChatListCoordinator)
class ProdChatListCoordinator extends Coordinator
    implements ChatListCoordinator {
  ProdChatListCoordinator({required super.goRouter});

  @override
  void onCreateMonologueBtnPressed() {
    const CreateMonologueRoute().push(goRouter);
  }

  @override
  void onCreateDialogueBtnPressed() {
    const CreateDialogueRoute().push(goRouter);
  }

  @override
  void onCreateGroupBtnPressed() {
    // TODO: implement onCreateGroupBtnPressed
  }

  @override
  void onChatPressed({required String chatID}) {
    ChatRoute(chatID: chatID).push(goRouter);
  }
}
