import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/to_chat_vm.dart';
import '../../application/providers/beautified_number_provider.dart';
import '../../application/view_models/chat_vm/chat_vm.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/entities/chat/chat.dart';

class DialogueChatToDialogueChatVMMapper
    extends TwoSourcesMapper<DialogueChat, ToChatVM, DialogueChatVM> {
  DialogueChatToDialogueChatVMMapper(
    super.input, {
    required BeautifiedNumberProvider beautifiedNumberProvider,
    required Mapster mapster,
  })  : _beautifiedNumberProvider = beautifiedNumberProvider,
        _mapster = mapster;

  final BeautifiedNumberProvider _beautifiedNumberProvider;
  final Mapster _mapster;

  @override
  DialogueChatVM map() {
    final partner = _dto.partner;
    final lastMessage = _dto.lastMessage;

    if (partner == null) {
      throw Exception('Partner is null during mapping to $DialogueChatVM');
    }

    return DialogueChatVM(
      id: _chat.id.str,
      createdAt: _chat.createdAt,
      partnerID: _chat.partnerID.str,
      partnerName: _mapster.map1(partner, To<UserVM>()).name,
      unreadAmount: _beautifiedNumberProvider.beautify(
        _chat.unreadAmount,
        showZero: false,
      ),
      // TODO: add online status
      onlineStatus: 'some status',
      lastMessage: lastMessage != null
          ? _mapster.map2(lastMessage, _dto.toMessageVM, To<MessageVM>())
          : null,
    );
  }

  DialogueChat get _chat => source1;

  ToChatVM get _dto => source2;
}
