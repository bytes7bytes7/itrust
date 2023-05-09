import '../../domain/entities/message/message.dart';
import '../../domain/entities/user/user.dart';
import 'to_message_vm.dart';

class ToChatVM {
  const ToChatVM({
    required this.toMessageVM,
    this.lastMessage,
    this.partner,
  });

  final ToMessageVM toMessageVM;
  final Message? lastMessage;
  final User? partner;
}
