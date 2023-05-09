import 'package:mapster/mapster.dart';

import '../../application/mapper_dto/to_message_vm.dart';
import '../../application/view_models/message_vm/message_vm.dart';
import '../../domain/entities/message/message.dart';

class MessageToMessageVMMapper
    extends TwoSourcesMapper<Message, ToMessageVM, MessageVM> {
  MessageToMessageVMMapper(
    super.input, {
    required Mapster mapster,
  }) : _mapster = mapster;

  final Mapster _mapster;

  @override
  MessageVM map() {
    final message = _message;

    if (message is InfoMessage) {
      return _mapster.map1(message, To<InfoMessageVM>());
    }

    if (message is UserMessage) {
      return _mapster.map2(message, _dto, To<UserMessageVM>());
    }

    throw Exception('Unknown type of message');
  }

  Message get _message => source1;

  ToMessageVM get _dto => source2;
}
