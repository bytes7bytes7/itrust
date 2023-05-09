import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/to_chat_vm.dart';
import '../../application/view_models/chat_vm/chat_vm.dart';
import '../../domain/entities/chat/chat.dart';

class ChatToChatVMMapper extends TwoSourcesMapper<Chat, ToChatVM, ChatVM> {
  ChatToChatVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  ChatVM map() {
    final chat = _chat;

    if (chat is MonologueChat) {
      return _mapster.map2(chat, _dto, To<MonologueChatVM>());
    }

    if (chat is DialogueChat) {
      return _mapster.map2(chat, _dto, To<DialogueChatVM>());
    }

    if (chat is GroupChat) {
      return _mapster.map2(chat, _dto, To<GroupChatVM>());
    }

    throw Exception('Unknown type of chat');
  }

  Chat get _chat => source1;

  ToChatVM get _dto => source2;
}
