import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/to_chat_vm.dart';
import '../../application/view_models/chat_vm/chat_vm.dart';
import '../../application/view_models/media_vm/media_vm.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../domain/entities/chat/chat.dart';

class MonologueChatToMonologueChatVMMapper
    extends TwoSourcesMapper<MonologueChat, ToChatVM, MonologueChatVM> {
  MonologueChatToMonologueChatVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  MonologueChatVM map() {
    final lastMessage = _dto.lastMessage;
    final pic = _chat.pic;

    return MonologueChatVM(
      id: _chat.id.str,
      title: _chat.title,
      iconName: _chat.iconName,
      pic: pic != null ? _mapster.map1(pic, To<MediaVM>()) : null,
      lastMessage: lastMessage != null
          ? _mapster.map2(lastMessage, _dto.toMessageVM, To<MessageVM>())
          : null,
    );
  }

  MonologueChat get _chat => source1;

  ToChatVM get _dto => source2;
}
