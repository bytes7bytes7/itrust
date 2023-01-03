import 'dart:async';

import '../../domain/domain.dart';

abstract class ChatRepository {
  FutureOr<Chat> getByID(ChatID id);
}
