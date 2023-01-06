import 'dart:typed_data';

import '../entity/entity.dart';
import '../value_object/value_object.dart';
import 'messages_event.dart';

abstract class GroupChatService {
  ChatID? currentChatID;

  Stream<MessagesEvent> get messagesEvents;

  /// Stream of updated chat value.
  /// If null comes then chat is deleted.
  Stream<Chat?> get updatedChat;

  // TODO: move to new_chat feature
  Future<void> create({
    required String title,
    required List<UserID> participantIDs,
    Uint8List? pic,
  });

  Future<void> delete();

  Future<void> updateTitle({
    required String title,
  });

  Future<void> updatePic({
    required Uint8List pic,
  });

  Future<void> removePic();

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
