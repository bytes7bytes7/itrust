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
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  MessageID get id => throw _privateConstructorUsedError;
  ChatID get chatID => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<String> get mediaUrls => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  User? get sender => throw _privateConstructorUsedError;
  DateTime? get modifiedAt => throw _privateConstructorUsedError;
  DateTime? get willBeBurntAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call(
      {MessageID id,
      ChatID chatID,
      String text,
      List<String> mediaUrls,
      DateTime sentAt,
      bool isRead,
      User? sender,
      DateTime? modifiedAt,
      DateTime? willBeBurntAt});

  $MessageIDCopyWith<$Res> get id;
  $ChatIDCopyWith<$Res> get chatID;
  $UserCopyWith<$Res>? get sender;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? text = null,
    Object? mediaUrls = null,
    Object? sentAt = null,
    Object? isRead = null,
    Object? sender = freezed,
    Object? modifiedAt = freezed,
    Object? willBeBurntAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageID,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: null == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User?,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageIDCopyWith<$Res> get id {
    return $MessageIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatIDCopyWith<$Res> get chatID {
    return $ChatIDCopyWith<$Res>(_value.chatID, (value) {
      return _then(_value.copyWith(chatID: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageID id,
      ChatID chatID,
      String text,
      List<String> mediaUrls,
      DateTime sentAt,
      bool isRead,
      User? sender,
      DateTime? modifiedAt,
      DateTime? willBeBurntAt});

  @override
  $MessageIDCopyWith<$Res> get id;
  @override
  $ChatIDCopyWith<$Res> get chatID;
  @override
  $UserCopyWith<$Res>? get sender;
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? text = null,
    Object? mediaUrls = null,
    Object? sentAt = null,
    Object? isRead = null,
    Object? sender = freezed,
    Object? modifiedAt = freezed,
    Object? willBeBurntAt = freezed,
  }) {
    return _then(_$_Message(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageID,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: null == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User?,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(
      {required this.id,
      required this.chatID,
      required this.text,
      required final List<String> mediaUrls,
      required this.sentAt,
      required this.isRead,
      this.sender,
      this.modifiedAt,
      this.willBeBurntAt})
      : _mediaUrls = mediaUrls;

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final MessageID id;
  @override
  final ChatID chatID;
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
  final DateTime sentAt;
  @override
  final bool isRead;
  @override
  final User? sender;
  @override
  final DateTime? modifiedAt;
  @override
  final DateTime? willBeBurntAt;

  @override
  String toString() {
    return 'Message(id: $id, chatID: $chatID, text: $text, mediaUrls: $mediaUrls, sentAt: $sentAt, isRead: $isRead, sender: $sender, modifiedAt: $modifiedAt, willBeBurntAt: $willBeBurntAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt) &&
            (identical(other.willBeBurntAt, willBeBurntAt) ||
                other.willBeBurntAt == willBeBurntAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatID,
      text,
      const DeepCollectionEquality().hash(_mediaUrls),
      sentAt,
      isRead,
      sender,
      modifiedAt,
      willBeBurntAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required final MessageID id,
      required final ChatID chatID,
      required final String text,
      required final List<String> mediaUrls,
      required final DateTime sentAt,
      required final bool isRead,
      final User? sender,
      final DateTime? modifiedAt,
      final DateTime? willBeBurntAt}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  MessageID get id;
  @override
  ChatID get chatID;
  @override
  String get text;
  @override
  List<String> get mediaUrls;
  @override
  DateTime get sentAt;
  @override
  bool get isRead;
  @override
  User? get sender;
  @override
  DateTime? get modifiedAt;
  @override
  DateTime? get willBeBurntAt;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}
