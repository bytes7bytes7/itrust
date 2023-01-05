// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'info':
      return InfoMessage.fromJson(json);
    case 'user':
      return UserMessage.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Message', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Message {
  MessageID get id => throw _privateConstructorUsedError;
  ChatID get chatID => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;
  List<UserID> get readBy => throw _privateConstructorUsedError;
  DateTime? get willBeBurntAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)
        user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessage value) info,
    required TResult Function(UserMessage value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessage value)? info,
    TResult? Function(UserMessage value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessage value)? info,
    TResult Function(UserMessage value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable()
class _$InfoMessage implements InfoMessage {
  const _$InfoMessage(
      {required this.id,
      required this.chatID,
      required this.sentAt,
      required final List<UserID> readBy,
      required this.markUp,
      required final List<String> markUpData,
      this.willBeBurntAt,
      final String? $type})
      : _readBy = readBy,
        _markUpData = markUpData,
        $type = $type ?? 'info';

  factory _$InfoMessage.fromJson(Map<String, dynamic> json) =>
      _$$InfoMessageFromJson(json);

  @override
  final MessageID id;
  @override
  final ChatID chatID;
  @override
  final DateTime sentAt;
  final List<UserID> _readBy;
  @override
  List<UserID> get readBy {
    if (_readBy is EqualUnmodifiableListView) return _readBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readBy);
  }

  @override
  final String markUp;
  final List<String> _markUpData;
  @override
  List<String> get markUpData {
    if (_markUpData is EqualUnmodifiableListView) return _markUpData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markUpData);
  }

  @override
  final DateTime? willBeBurntAt;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.info(id: $id, chatID: $chatID, sentAt: $sentAt, readBy: $readBy, markUp: $markUp, markUpData: $markUpData, willBeBurntAt: $willBeBurntAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            const DeepCollectionEquality().equals(other._readBy, _readBy) &&
            (identical(other.markUp, markUp) || other.markUp == markUp) &&
            const DeepCollectionEquality()
                .equals(other._markUpData, _markUpData) &&
            (identical(other.willBeBurntAt, willBeBurntAt) ||
                other.willBeBurntAt == willBeBurntAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatID,
      sentAt,
      const DeepCollectionEquality().hash(_readBy),
      markUp,
      const DeepCollectionEquality().hash(_markUpData),
      willBeBurntAt);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)
        user,
  }) {
    return info(id, chatID, sentAt, readBy, markUp, markUpData, willBeBurntAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
  }) {
    return info?.call(
        id, chatID, sentAt, readBy, markUp, markUpData, willBeBurntAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(
          id, chatID, sentAt, readBy, markUp, markUpData, willBeBurntAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessage value) info,
    required TResult Function(UserMessage value) user,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessage value)? info,
    TResult? Function(UserMessage value)? user,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessage value)? info,
    TResult Function(UserMessage value)? user,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoMessageToJson(
      this,
    );
  }
}

abstract class InfoMessage implements Message {
  const factory InfoMessage(
      {required final MessageID id,
      required final ChatID chatID,
      required final DateTime sentAt,
      required final List<UserID> readBy,
      required final String markUp,
      required final List<String> markUpData,
      final DateTime? willBeBurntAt}) = _$InfoMessage;

  factory InfoMessage.fromJson(Map<String, dynamic> json) =
      _$InfoMessage.fromJson;

  @override
  MessageID get id;
  @override
  ChatID get chatID;
  @override
  DateTime get sentAt;
  @override
  List<UserID> get readBy;
  String get markUp;
  List<String> get markUpData;
  @override
  DateTime? get willBeBurntAt;
}

/// @nodoc
@JsonSerializable()
class _$UserMessage implements UserMessage {
  const _$UserMessage(
      {required this.id,
      required this.chatID,
      required this.sentAt,
      required final List<UserID> readBy,
      required this.text,
      required final List<String> mediaUrls,
      required this.senderID,
      this.willBeBurntAt,
      this.modifiedAt,
      final String? $type})
      : _readBy = readBy,
        _mediaUrls = mediaUrls,
        $type = $type ?? 'user';

  factory _$UserMessage.fromJson(Map<String, dynamic> json) =>
      _$$UserMessageFromJson(json);

  @override
  final MessageID id;
  @override
  final ChatID chatID;
  @override
  final DateTime sentAt;
  final List<UserID> _readBy;
  @override
  List<UserID> get readBy {
    if (_readBy is EqualUnmodifiableListView) return _readBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_readBy);
  }

  @override
  final String text;
  final List<String> _mediaUrls;
  @override
  List<String> get mediaUrls {
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaUrls);
  }

  @override
  final UserID senderID;
  @override
  final DateTime? willBeBurntAt;
  @override
  final DateTime? modifiedAt;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.user(id: $id, chatID: $chatID, sentAt: $sentAt, readBy: $readBy, text: $text, mediaUrls: $mediaUrls, senderID: $senderID, willBeBurntAt: $willBeBurntAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            const DeepCollectionEquality().equals(other._readBy, _readBy) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            (identical(other.senderID, senderID) ||
                other.senderID == senderID) &&
            (identical(other.willBeBurntAt, willBeBurntAt) ||
                other.willBeBurntAt == willBeBurntAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatID,
      sentAt,
      const DeepCollectionEquality().hash(_readBy),
      text,
      const DeepCollectionEquality().hash(_mediaUrls),
      senderID,
      willBeBurntAt,
      modifiedAt);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)
        user,
  }) {
    return user(id, chatID, sentAt, readBy, text, mediaUrls, senderID,
        willBeBurntAt, modifiedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
  }) {
    return user?.call(id, chatID, sentAt, readBy, text, mediaUrls, senderID,
        willBeBurntAt, modifiedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String markUp,
            List<String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            List<UserID> readBy,
            String text,
            List<String> mediaUrls,
            UserID senderID,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(id, chatID, sentAt, readBy, text, mediaUrls, senderID,
          willBeBurntAt, modifiedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessage value) info,
    required TResult Function(UserMessage value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessage value)? info,
    TResult? Function(UserMessage value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessage value)? info,
    TResult Function(UserMessage value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMessageToJson(
      this,
    );
  }
}

abstract class UserMessage implements Message {
  const factory UserMessage(
      {required final MessageID id,
      required final ChatID chatID,
      required final DateTime sentAt,
      required final List<UserID> readBy,
      required final String text,
      required final List<String> mediaUrls,
      required final UserID senderID,
      final DateTime? willBeBurntAt,
      final DateTime? modifiedAt}) = _$UserMessage;

  factory UserMessage.fromJson(Map<String, dynamic> json) =
      _$UserMessage.fromJson;

  @override
  MessageID get id;
  @override
  ChatID get chatID;
  @override
  DateTime get sentAt;
  @override
  List<UserID> get readBy;
  String get text;
  List<String> get mediaUrls;
  UserID get senderID;
  @override
  DateTime? get willBeBurntAt;
  DateTime? get modifiedAt;
}
