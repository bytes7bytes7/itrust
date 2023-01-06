part of 'message.dart';

extension UserMessageBusinessLogic on UserMessage {
  UserMessage _copyWith({
    MessageID? id,
    ChatID? chatID,
    DateTime? sentAt,
    List<UserID>? readBy,
    String? text,
    List<String>? mediaUrls,
    UserID? senderID,
    Wrapped<DateTime>? willBeBurntAt,
    Wrapped<DateTime>? modifiedAt,
  }) {
    return UserMessage(
      id: id ?? this.id,
      chatID: chatID ?? this.chatID,
      sentAt: sentAt ?? this.sentAt,
      readBy: readBy ?? this.readBy,
      text: text ?? this.text,
      mediaUrls: mediaUrls ?? this.mediaUrls,
      senderID: senderID ?? this.senderID,
      willBeBurntAt:
          willBeBurntAt != null ? willBeBurntAt.value : this.willBeBurntAt,
      modifiedAt: modifiedAt != null ? modifiedAt.value : this.modifiedAt,
    );
  }

  UserMessage markAsReadBy(UserID userID) {
    if (readBy.contains(userID)) {
      throw Exception('This user has already read the message');
    }

    return _copyWith(
      readBy: List.from(readBy)..add(userID),
    );
  }

  UserMessage editText(String text) {
    if (mediaUrls.isEmpty) {
      throw Exception('Message must contains text or media');
    }

    return _copyWith(
      text: text,
    );
  }

  UserMessage addMediaUrls(List<String> mediaUrls) {
    return _copyWith(
      mediaUrls: List.from(this.mediaUrls)..addAll(mediaUrls),
    );
  }

  UserMessage removeMediaUrl(String mediaUrl) {
    final index = mediaUrls.indexWhere((e) => e == mediaUrl);

    if (index == -1) {
      throw Exception('mediaUrl not found');
    }

    return _copyWith(
      mediaUrls: List.from(mediaUrls)..removeAt(index),
    );
  }
}
