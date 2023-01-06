part of 'message.dart';

extension InfoMessageBusinessLogic on InfoMessage {
  InfoMessage _copyWith({
    MessageID? id,
    ChatID? chatID,
    DateTime? sentAt,
    List<UserID>? readBy,
    String? markUp,
    List<String>? markUpData,
    Wrapped<DateTime>? willBeBurntAt,
  }) {
    return InfoMessage(
      id: id ?? this.id,
      chatID: chatID ?? this.chatID,
      sentAt: sentAt ?? this.sentAt,
      readBy: readBy ?? this.readBy,
      markUp: markUp ?? this.markUp,
      markUpData: markUpData ?? this.markUpData,
      willBeBurntAt:
          willBeBurntAt != null ? willBeBurntAt.value : this.willBeBurntAt,
    );
  }

  InfoMessage markAsReadBy(UserID userID) {
    if (readBy.contains(userID)) {
      throw Exception('This user has already read the message');
    }

    return _copyWith(
      readBy: List.from(readBy)..add(userID),
    );
  }
}
