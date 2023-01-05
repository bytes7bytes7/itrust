// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'monologue':
      return MonologueChat.fromJson(json);
    case 'dialogue':
      return DialogueChat.fromJson(json);
    case 'group':
      return GroupChat.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Chat', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Chat {
  ChatID get id => throw _privateConstructorUsedError;
  int get unreadAmount => throw _privateConstructorUsedError;
  Message? get lastMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)
        monologue,
    required TResult Function(
            ChatID id, int unreadAmount, UserID partnerID, Message? lastMessage)
        dialogue,
    required TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)?
        monologue,
    TResult? Function(ChatID id, int unreadAmount, UserID partnerID,
            Message? lastMessage)?
        dialogue,
    TResult? Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)?
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)?
        monologue,
    TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            Message? lastMessage)?
        dialogue,
    TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)?
        group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
    required TResult Function(DialogueChat value) dialogue,
    required TResult Function(GroupChat value) group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
    TResult? Function(DialogueChat value)? dialogue,
    TResult? Function(GroupChat value)? group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    TResult Function(DialogueChat value)? dialogue,
    TResult Function(GroupChat value)? group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$MonologueChat implements MonologueChat {
  const _$MonologueChat(
      {required this.id,
      required this.unreadAmount,
      required this.title,
      this.lastMessage,
      this.picUrl,
      this.iconName,
      final String? $type})
      : $type = $type ?? 'monologue';

  factory _$MonologueChat.fromJson(Map<String, dynamic> json) =>
      _$$MonologueChatFromJson(json);

  @override
  final ChatID id;
  @override
  final int unreadAmount;
  @override
  final String title;
  @override
  final Message? lastMessage;
  @override
  final String? picUrl;
  @override
  final String? iconName;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Chat.monologue(id: $id, unreadAmount: $unreadAmount, title: $title, lastMessage: $lastMessage, picUrl: $picUrl, iconName: $iconName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonologueChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unreadAmount, unreadAmount) ||
                other.unreadAmount == unreadAmount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, unreadAmount, title, lastMessage, picUrl, iconName);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)
        monologue,
    required TResult Function(
            ChatID id, int unreadAmount, UserID partnerID, Message? lastMessage)
        dialogue,
    required TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)
        group,
  }) {
    return monologue(id, unreadAmount, title, lastMessage, picUrl, iconName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)?
        monologue,
    TResult? Function(ChatID id, int unreadAmount, UserID partnerID,
            Message? lastMessage)?
        dialogue,
    TResult? Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)?
        group,
  }) {
    return monologue?.call(
        id, unreadAmount, title, lastMessage, picUrl, iconName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)?
        monologue,
    TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            Message? lastMessage)?
        dialogue,
    TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)?
        group,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(id, unreadAmount, title, lastMessage, picUrl, iconName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
    required TResult Function(DialogueChat value) dialogue,
    required TResult Function(GroupChat value) group,
  }) {
    return monologue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
    TResult? Function(DialogueChat value)? dialogue,
    TResult? Function(GroupChat value)? group,
  }) {
    return monologue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    TResult Function(DialogueChat value)? dialogue,
    TResult Function(GroupChat value)? group,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MonologueChatToJson(
      this,
    );
  }
}

abstract class MonologueChat implements Chat {
  const factory MonologueChat(
      {required final ChatID id,
      required final int unreadAmount,
      required final String title,
      final Message? lastMessage,
      final String? picUrl,
      final String? iconName}) = _$MonologueChat;

  factory MonologueChat.fromJson(Map<String, dynamic> json) =
      _$MonologueChat.fromJson;

  @override
  ChatID get id;
  @override
  int get unreadAmount;
  String get title;
  @override
  Message? get lastMessage;
  String? get picUrl;
  String? get iconName;
}

/// @nodoc
@JsonSerializable()
class _$DialogueChat implements DialogueChat {
  const _$DialogueChat(
      {required this.id,
      required this.unreadAmount,
      required this.partnerID,
      this.lastMessage,
      final String? $type})
      : $type = $type ?? 'dialogue';

  factory _$DialogueChat.fromJson(Map<String, dynamic> json) =>
      _$$DialogueChatFromJson(json);

  @override
  final ChatID id;
  @override
  final int unreadAmount;
  @override
  final UserID partnerID;
  @override
  final Message? lastMessage;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Chat.dialogue(id: $id, unreadAmount: $unreadAmount, partnerID: $partnerID, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unreadAmount, unreadAmount) ||
                other.unreadAmount == unreadAmount) &&
            (identical(other.partnerID, partnerID) ||
                other.partnerID == partnerID) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, unreadAmount, partnerID, lastMessage);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)
        monologue,
    required TResult Function(
            ChatID id, int unreadAmount, UserID partnerID, Message? lastMessage)
        dialogue,
    required TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)
        group,
  }) {
    return dialogue(id, unreadAmount, partnerID, lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)?
        monologue,
    TResult? Function(ChatID id, int unreadAmount, UserID partnerID,
            Message? lastMessage)?
        dialogue,
    TResult? Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)?
        group,
  }) {
    return dialogue?.call(id, unreadAmount, partnerID, lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)?
        monologue,
    TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            Message? lastMessage)?
        dialogue,
    TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)?
        group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(id, unreadAmount, partnerID, lastMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
    required TResult Function(DialogueChat value) dialogue,
    required TResult Function(GroupChat value) group,
  }) {
    return dialogue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
    TResult? Function(DialogueChat value)? dialogue,
    TResult? Function(GroupChat value)? group,
  }) {
    return dialogue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    TResult Function(DialogueChat value)? dialogue,
    TResult Function(GroupChat value)? group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DialogueChatToJson(
      this,
    );
  }
}

abstract class DialogueChat implements Chat {
  const factory DialogueChat(
      {required final ChatID id,
      required final int unreadAmount,
      required final UserID partnerID,
      final Message? lastMessage}) = _$DialogueChat;

  factory DialogueChat.fromJson(Map<String, dynamic> json) =
      _$DialogueChat.fromJson;

  @override
  ChatID get id;
  @override
  int get unreadAmount;
  UserID get partnerID;
  @override
  Message? get lastMessage;
}

/// @nodoc
@JsonSerializable()
class _$GroupChat implements GroupChat {
  const _$GroupChat(
      {required this.id,
      required this.unreadAmount,
      required this.title,
      this.lastMessage,
      this.picUrl,
      final String? $type})
      : $type = $type ?? 'group';

  factory _$GroupChat.fromJson(Map<String, dynamic> json) =>
      _$$GroupChatFromJson(json);

  @override
  final ChatID id;
  @override
  final int unreadAmount;
  @override
  final String title;
  @override
  final Message? lastMessage;
  @override
  final String? picUrl;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Chat.group(id: $id, unreadAmount: $unreadAmount, title: $title, lastMessage: $lastMessage, picUrl: $picUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unreadAmount, unreadAmount) ||
                other.unreadAmount == unreadAmount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, unreadAmount, title, lastMessage, picUrl);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)
        monologue,
    required TResult Function(
            ChatID id, int unreadAmount, UserID partnerID, Message? lastMessage)
        dialogue,
    required TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)
        group,
  }) {
    return group(id, unreadAmount, title, lastMessage, picUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)?
        monologue,
    TResult? Function(ChatID id, int unreadAmount, UserID partnerID,
            Message? lastMessage)?
        dialogue,
    TResult? Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)?
        group,
  }) {
    return group?.call(id, unreadAmount, title, lastMessage, picUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl, String? iconName)?
        monologue,
    TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            Message? lastMessage)?
        dialogue,
    TResult Function(ChatID id, int unreadAmount, String title,
            Message? lastMessage, String? picUrl)?
        group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(id, unreadAmount, title, lastMessage, picUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChat value) monologue,
    required TResult Function(DialogueChat value) dialogue,
    required TResult Function(GroupChat value) group,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChat value)? monologue,
    TResult? Function(DialogueChat value)? dialogue,
    TResult? Function(GroupChat value)? group,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChat value)? monologue,
    TResult Function(DialogueChat value)? dialogue,
    TResult Function(GroupChat value)? group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupChatToJson(
      this,
    );
  }
}

abstract class GroupChat implements Chat {
  const factory GroupChat(
      {required final ChatID id,
      required final int unreadAmount,
      required final String title,
      final Message? lastMessage,
      final String? picUrl}) = _$GroupChat;

  factory GroupChat.fromJson(Map<String, dynamic> json) = _$GroupChat.fromJson;

  @override
  ChatID get id;
  @override
  int get unreadAmount;
  String get title;
  @override
  Message? get lastMessage;
  String? get picUrl;
}
