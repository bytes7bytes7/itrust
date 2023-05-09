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
  bool get isReadyByMe => throw _privateConstructorUsedError;
  DateTime? get willBeBurntAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
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
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
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
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
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
      DateTime sentAt,
      bool isReadyByMe,
      DateTime? willBeBurntAt});

  $MessageIDCopyWith<$Res> get id;
  $ChatIDCopyWith<$Res> get chatID;
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
    Object? sentAt = null,
    Object? isReadyByMe = null,
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
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isReadyByMe: null == isReadyByMe
          ? _value.isReadyByMe
          : isReadyByMe // ignore: cast_nullable_to_non_nullable
              as bool,
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
}

/// @nodoc
abstract class _$$InfoMessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$InfoMessageCopyWith(
          _$InfoMessage value, $Res Function(_$InfoMessage) then) =
      __$$InfoMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageID id,
      ChatID chatID,
      DateTime sentAt,
      bool isReadyByMe,
      String markUp,
      Map<String, String> markUpData,
      DateTime? willBeBurntAt});

  @override
  $MessageIDCopyWith<$Res> get id;
  @override
  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$InfoMessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$InfoMessage>
    implements _$$InfoMessageCopyWith<$Res> {
  __$$InfoMessageCopyWithImpl(
      _$InfoMessage _value, $Res Function(_$InfoMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? sentAt = null,
    Object? isReadyByMe = null,
    Object? markUp = null,
    Object? markUpData = null,
    Object? willBeBurntAt = freezed,
  }) {
    return _then(_$InfoMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageID,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isReadyByMe: null == isReadyByMe
          ? _value.isReadyByMe
          : isReadyByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      markUp: null == markUp
          ? _value.markUp
          : markUp // ignore: cast_nullable_to_non_nullable
              as String,
      markUpData: null == markUpData
          ? _value._markUpData
          : markUpData // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoMessage implements InfoMessage {
  const _$InfoMessage(
      {required this.id,
      required this.chatID,
      required this.sentAt,
      required this.isReadyByMe,
      required this.markUp,
      required final Map<String, String> markUpData,
      this.willBeBurntAt,
      final String? $type})
      : _markUpData = markUpData,
        $type = $type ?? 'info';

  factory _$InfoMessage.fromJson(Map<String, dynamic> json) =>
      _$$InfoMessageFromJson(json);

  @override
  final MessageID id;
  @override
  final ChatID chatID;
  @override
  final DateTime sentAt;
  @override
  final bool isReadyByMe;
  @override
  final String markUp;
  final Map<String, String> _markUpData;
  @override
  Map<String, String> get markUpData {
    if (_markUpData is EqualUnmodifiableMapView) return _markUpData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_markUpData);
  }

  @override
  final DateTime? willBeBurntAt;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.info(id: $id, chatID: $chatID, sentAt: $sentAt, isReadyByMe: $isReadyByMe, markUp: $markUp, markUpData: $markUpData, willBeBurntAt: $willBeBurntAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isReadyByMe, isReadyByMe) ||
                other.isReadyByMe == isReadyByMe) &&
            (identical(other.markUp, markUp) || other.markUp == markUp) &&
            const DeepCollectionEquality()
                .equals(other._markUpData, _markUpData) &&
            (identical(other.willBeBurntAt, willBeBurntAt) ||
                other.willBeBurntAt == willBeBurntAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, chatID, sentAt, isReadyByMe,
      markUp, const DeepCollectionEquality().hash(_markUpData), willBeBurntAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoMessageCopyWith<_$InfoMessage> get copyWith =>
      __$$InfoMessageCopyWithImpl<_$InfoMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)
        user,
  }) {
    return info(
        id, chatID, sentAt, isReadyByMe, markUp, markUpData, willBeBurntAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
  }) {
    return info?.call(
        id, chatID, sentAt, isReadyByMe, markUp, markUpData, willBeBurntAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(
          id, chatID, sentAt, isReadyByMe, markUp, markUpData, willBeBurntAt);
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
      required final bool isReadyByMe,
      required final String markUp,
      required final Map<String, String> markUpData,
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
  bool get isReadyByMe;
  String get markUp;
  Map<String, String> get markUpData;
  @override
  DateTime? get willBeBurntAt;
  @override
  @JsonKey(ignore: true)
  _$$InfoMessageCopyWith<_$InfoMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserMessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$UserMessageCopyWith(
          _$UserMessage value, $Res Function(_$UserMessage) then) =
      __$$UserMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageID id,
      ChatID chatID,
      UserID senderID,
      DateTime sentAt,
      bool isReadyByMe,
      String text,
      List<Media> mediaIDs,
      DateTime? willBeBurntAt,
      DateTime? modifiedAt});

  @override
  $MessageIDCopyWith<$Res> get id;
  @override
  $ChatIDCopyWith<$Res> get chatID;
  $UserIDCopyWith<$Res> get senderID;
}

/// @nodoc
class __$$UserMessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$UserMessage>
    implements _$$UserMessageCopyWith<$Res> {
  __$$UserMessageCopyWithImpl(
      _$UserMessage _value, $Res Function(_$UserMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? senderID = null,
    Object? sentAt = null,
    Object? isReadyByMe = null,
    Object? text = null,
    Object? mediaIDs = null,
    Object? willBeBurntAt = freezed,
    Object? modifiedAt = freezed,
  }) {
    return _then(_$UserMessage(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as MessageID,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      senderID: null == senderID
          ? _value.senderID
          : senderID // ignore: cast_nullable_to_non_nullable
              as UserID,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isReadyByMe: null == isReadyByMe
          ? _value.isReadyByMe
          : isReadyByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      mediaIDs: null == mediaIDs
          ? _value._mediaIDs
          : mediaIDs // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get senderID {
    return $UserIDCopyWith<$Res>(_value.senderID, (value) {
      return _then(_value.copyWith(senderID: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMessage implements UserMessage {
  const _$UserMessage(
      {required this.id,
      required this.chatID,
      required this.senderID,
      required this.sentAt,
      required this.isReadyByMe,
      required this.text,
      required final List<Media> mediaIDs,
      this.willBeBurntAt,
      this.modifiedAt,
      final String? $type})
      : _mediaIDs = mediaIDs,
        $type = $type ?? 'user';

  factory _$UserMessage.fromJson(Map<String, dynamic> json) =>
      _$$UserMessageFromJson(json);

  @override
  final MessageID id;
  @override
  final ChatID chatID;
  @override
  final UserID senderID;
  @override
  final DateTime sentAt;
  @override
  final bool isReadyByMe;
  @override
  final String text;
  final List<Media> _mediaIDs;
  @override
  List<Media> get mediaIDs {
    if (_mediaIDs is EqualUnmodifiableListView) return _mediaIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaIDs);
  }

  @override
  final DateTime? willBeBurntAt;
  @override
  final DateTime? modifiedAt;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Message.user(id: $id, chatID: $chatID, senderID: $senderID, sentAt: $sentAt, isReadyByMe: $isReadyByMe, text: $text, mediaIDs: $mediaIDs, willBeBurntAt: $willBeBurntAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.senderID, senderID) ||
                other.senderID == senderID) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isReadyByMe, isReadyByMe) ||
                other.isReadyByMe == isReadyByMe) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._mediaIDs, _mediaIDs) &&
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
      senderID,
      sentAt,
      isReadyByMe,
      text,
      const DeepCollectionEquality().hash(_mediaIDs),
      willBeBurntAt,
      modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMessageCopyWith<_$UserMessage> get copyWith =>
      __$$UserMessageCopyWithImpl<_$UserMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)
        info,
    required TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)
        user,
  }) {
    return user(id, chatID, senderID, sentAt, isReadyByMe, text, mediaIDs,
        willBeBurntAt, modifiedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
  }) {
    return user?.call(id, chatID, senderID, sentAt, isReadyByMe, text, mediaIDs,
        willBeBurntAt, modifiedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            MessageID id,
            ChatID chatID,
            DateTime sentAt,
            bool isReadyByMe,
            String markUp,
            Map<String, String> markUpData,
            DateTime? willBeBurntAt)?
        info,
    TResult Function(
            MessageID id,
            ChatID chatID,
            UserID senderID,
            DateTime sentAt,
            bool isReadyByMe,
            String text,
            List<Media> mediaIDs,
            DateTime? willBeBurntAt,
            DateTime? modifiedAt)?
        user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(id, chatID, senderID, sentAt, isReadyByMe, text, mediaIDs,
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
      required final UserID senderID,
      required final DateTime sentAt,
      required final bool isReadyByMe,
      required final String text,
      required final List<Media> mediaIDs,
      final DateTime? willBeBurntAt,
      final DateTime? modifiedAt}) = _$UserMessage;

  factory UserMessage.fromJson(Map<String, dynamic> json) =
      _$UserMessage.fromJson;

  @override
  MessageID get id;
  @override
  ChatID get chatID;
  UserID get senderID;
  @override
  DateTime get sentAt;
  @override
  bool get isReadyByMe;
  String get text;
  List<Media> get mediaIDs;
  @override
  DateTime? get willBeBurntAt;
  DateTime? get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserMessageCopyWith<_$UserMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
