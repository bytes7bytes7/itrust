part of 'chat.dart';

extension DialogueChatBusinessLogic on DialogueChat {
  DialogueChat _copyWith({
    ChatID? id,
    int? unreadAmount,
    UserID? partnerID,
    Wrapped<Message>? lastMessage,
  }) {
    return DialogueChat(
      id: id ?? this.id,
      unreadAmount: unreadAmount ?? this.unreadAmount,
      partnerID: partnerID ?? this.partnerID,
      lastMessage: lastMessage != null ? lastMessage.value : this.lastMessage,
    );
  }

  DialogueChat setUnreadAmount(int unreadAmount) {
    if (unreadAmount < 0) {
      throw Exception('unreadAmount can not be negative');
    }

    return _copyWith(
      unreadAmount: unreadAmount,
    );
  }

  DialogueChat setLastMessage(Message? lastMessage) {
    if (lastMessage == null) {
      return _copyWith(
        lastMessage: const Wrapped(null),
      );
    }

    if (lastMessage.chatID != id) {
      throw Exception('lastMessage does not belong to this chat');
    }

    return _copyWith(
      lastMessage: Wrapped(lastMessage),
    );
  }
}
