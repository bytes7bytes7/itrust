import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/to_chat_vm.dart';
import '../../application/providers/beautified_number_provider.dart';
import '../../application/view_models/chat_vm/chat_vm.dart';
import '../../application/view_models/media_vm/media_vm.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../domain/entities/chat/chat.dart';

class GroupChatToGroupChatVMMapper
    extends TwoSourcesMapper<GroupChat, ToChatVM, GroupChatVM> {
  GroupChatToGroupChatVMMapper(
    super.input, {
    required BeautifiedNumberProvider beautifiedNumberProvider,
    required Mapster mapster,
  })  : _beautifiedNumberProvider = beautifiedNumberProvider,
        _mapster = mapster;

  final BeautifiedNumberProvider _beautifiedNumberProvider;
  final Mapster _mapster;

  @override
  GroupChatVM map() {
    final lastMessage = _dto.lastMessage;
    final pic = _chat.pic;

    return GroupChatVM(
      id: _chat.id.str,
      createdAt: _chat.createdAt,
      ownerID: _chat.ownerID.str,
      participantsAmount: _chat.participantsAmount.toString(),
      title: _chat.title,
      unreadAmount: _beautifiedNumberProvider.beautify(
        _chat.unreadAmount,
        showZero: false,
      ),
      pic: pic != null ? _mapster.map1(pic, To<MediaVM>()) : null,
      lastMessage: lastMessage != null
          ? _mapster.map2(lastMessage, _dto.toMessageVM, To<MessageVM>())
          : null,
    );
  }

  GroupChat get _chat => source1;

  ToChatVM get _dto => source2;
}
