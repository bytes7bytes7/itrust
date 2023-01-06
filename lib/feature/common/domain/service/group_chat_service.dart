import 'dart:typed_data';

import '../value_object/value_object.dart';

abstract class GroupChatService {
  Future<void> create({
    required String title,
    required List<UserID> participantIDs,
    Uint8List? pic,
  });

  Future<void> delete({
    required ChatID chatID,
  });

  Future<void> updateTitle({
    required ChatID chatID,
    required String title,
  });

  Future<void> updatePic({
    required ChatID chatID,
    required Uint8List pic,
  });

  Future<void> removePic({
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
