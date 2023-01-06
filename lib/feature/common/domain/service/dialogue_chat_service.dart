import 'dart:typed_data';

import '../value_object/value_object.dart';

abstract class DialogueChatService {
  Future<void> create({
    required UserID partnerID,
  });

  Future<void> delete({
    required ChatID chatID,
  });

  Future<void> sendMessage({
    required ChatID chatID,
    String text = '',
    List<Uint8List> media = const [],
    Duration? burnDelay,
  });

  Future<void> editMessage({
    required ChatID chatID,
    required MessageID messageID,
    String? text,
    List<Uint8List> mediaToAdd = const [],
    List<String> mediaToRemove = const [],
  });

  Future<void> deleteMessages({
    required ChatID chatID,
    required List<MessageID> messageIDs,
  });

  Future<void> readMessagesUntilMessage({
    required ChatID chatID,
    required MessageID lastMessageID,
  });
}
