part of 'chat.dart';

extension GroupChatBusinessLogic on GroupChat {
  GroupChat _copyWith({
    ChatID? id,
    int? unreadAmount,
    String? title,
    Wrapped<Message>? lastMessage,
    Wrapped<String>? picUrl,
  }) {
    return GroupChat(
      id: id ?? this.id,
      unreadAmount: unreadAmount ?? this.unreadAmount,
      title: title ?? this.title,
      lastMessage: lastMessage != null ? lastMessage.value : this.lastMessage,
      picUrl: picUrl != null ? picUrl.value : this.picUrl,
    );
  }

  GroupChat setUnreadAmount(int unreadAmount) {
    if (unreadAmount < 0) {
      throw Exception('unreadAmount can not be negative');
    }

    return _copyWith(
      unreadAmount: unreadAmount,
    );
  }

  GroupChat setTitle(String title) {
    if (title.isEmpty) {
      throw Exception('title can not be empty');
    }

    return _copyWith(
      title: title,
    );
  }

  GroupChat setLastMessage(Message? lastMessage) {
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

  GroupChat setPicUrl(String picUrl) {
    if (picUrl.isEmpty) {
      throw Exception('picUrl can not be empty');
    }

    return _copyWith(
      picUrl: Wrapped(picUrl),
    );
  }
}
