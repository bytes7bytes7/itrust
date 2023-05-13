import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/to_message_vm.dart';
import '../../application/providers/formatted_date_provider.dart';
import '../../application/view_models/media_vm/media_vm.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../application/view_models/user_vm/user_vm.dart';
import '../../domain/entities/message/message.dart';

class UserMessageToUserMessageVMMapper
    extends TwoSourcesMapper<UserMessage, ToMessageVM, UserMessageVM> {
  UserMessageToUserMessageVMMapper(
    super.input, {
    required Mapster mapster,
    required FormattedDateProvider formattedDateProvider,
  })  : _mapster = mapster,
        _formattedDateProvider = formattedDateProvider;

  final Mapster _mapster;
  final FormattedDateProvider _formattedDateProvider;

  @override
  UserMessageVM map() {
    final user = _dto.user;

    if (user == null) {
      throw Exception('User is null during mapping to $UserMessageVM');
    }

    final modifiedAt = _message.modifiedAt;

    return UserMessageVM(
      id: _message.id.str,
      chatID: _message.chatID.str,
      senderID: _message.senderID.str,
      isSentByMe: _dto.isSentByMe,
      senderName: _mapster.map1(user, To<UserVM>()).name,
      sentAtDT: _message.sentAt,
      sentAt: _formattedDateProvider.inRelationToNow(_message.sentAt),
      isReadByMe: _message.isReadByMe,
      text: _message.text,
      media:
          _message.media.map((e) => _mapster.map1(e, To<MediaVM>())).toList(),
      // TODO: convert DateTime from UTC to local
      willBeBurntAt: _message.willBeBurntAt,
      modifiedAt: modifiedAt != null
          ? _formattedDateProvider.inRelationToNow(modifiedAt)
          : null,
    );
  }

  UserMessage get _message => source1;

  ToMessageVM get _dto => source2;
}
