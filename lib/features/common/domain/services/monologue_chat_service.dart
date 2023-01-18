import 'dart:typed_data';

import '../entities/entities.dart';
import '../value_objects/value_objects.dart';
import 'messages_event.dart';

abstract class MonologueChatService {
  ChatID? currentChatID;

  Stream<MessagesEvent> get messagesEvents;

  /// Stream of updated chat value.
  /// If null comes then chat is deleted.
  Stream<Chat?> get updatedChat;

  // TODO: move to new_chat feature
  Future<void> create({
    required String title,
    String? iconName,
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

  Future<void> updateIcon({
    required String iconName,
  });

  Future<void> removeIcon();

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
}
