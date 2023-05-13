import 'package:mapster/mapster.dart';

import '../../application/providers/formatted_date_provider.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../domain/entities/message/message.dart';

class InfoMessageToInfoMessageVMMapper
    extends OneSourceMapper<InfoMessage, InfoMessageVM> {
  InfoMessageToInfoMessageVMMapper(
    super.input, {
    required FormattedDateProvider formattedDateProvider,
  }) : _formattedDateProvider = formattedDateProvider;

  final FormattedDateProvider _formattedDateProvider;

  @override
  InfoMessageVM map() {
    return InfoMessageVM(
      id: _message.id.str,
      chatID: _message.chatID.str,
      sentAtDT: _message.sentAt,
      sentAt: _formattedDateProvider.inRelationToNow(_message.sentAt),
      isReadByMe: _message.isReadByMe,
      // TODO: use markUp and markUpData
      text: _message.markUp,
      // TODO: convert DateTime from UTC to local
      willBeBurntAt: _message.willBeBurntAt,
    );
  }

  InfoMessage get _message => source;
}
