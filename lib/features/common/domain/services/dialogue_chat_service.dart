import 'dart:typed_data';

import '../entities/entities.dart';
import '../value_objects/value_objects.dart';
import 'messages_event.dart';

abstract class DialogueChatService {
  ChatID? currentChatID;

  Stream<MessagesEvent> get messagesEvents;

  /// Stream of updated chat value.
  /// If null comes then chat is deleted.
  Stream<Chat?> get updatedChat;

  // TODO: move to new_chat feature
  Future<void> create({
    required UserID partnerID,
  });

  Future<void> delete();

  Future<void> sendMessage({
    String text = '',
    List<Uint8List> media = const [],
    Duration? burnDelay,
  });

  Future<void> editMessage({
    required MessageID messageID,
    String? text,
    List<Uint8List> mediaToAdd = const [],
    List<String> mediaToRemove = const [],
  });

  Future<void> deleteMessages({
    required List<MessageID> messageIDs,
  });

  Future<void> readMessagesUntilMessage({
    required MessageID lastMessageID,
  });
}
