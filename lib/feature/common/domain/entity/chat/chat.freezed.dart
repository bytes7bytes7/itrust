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
  MessageID? get lastMessageID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)
        monologue,
    required TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)
        dialogue,
    required TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)?
        monologue,
    TResult? Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)?
        dialogue,
    TResult? Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)?
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)?
        monologue,
    TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)?
        dialogue,
    TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)?
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
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call({ChatID id, int unreadAmount, MessageID? lastMessageID});

  $ChatIDCopyWith<$Res> get id;
  $MessageIDCopyWith<$Res>? get lastMessageID;
}

/// @nodoc
class _$ChatCopyWithImpl<$Res, $Val extends Chat>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unreadAmount = null,
    Object? lastMessageID = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as int,
      lastMessageID: freezed == lastMessageID
          ? _value.lastMessageID
          : lastMessageID // ignore: cast_nullable_to_non_nullable
              as MessageID?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatIDCopyWith<$Res> get id {
    return $ChatIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageIDCopyWith<$Res>? get lastMessageID {
    if (_value.lastMessageID == null) {
      return null;
    }

    return $MessageIDCopyWith<$Res>(_value.lastMessageID!, (value) {
      return _then(_value.copyWith(lastMessageID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonologueChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$MonologueChatCopyWith(
          _$MonologueChat value, $Res Function(_$MonologueChat) then) =
      __$$MonologueChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id,
      int unreadAmount,
      String title,
      MessageID? lastMessageID,
      String? picUrl,
      String? iconName});

  @override
  $ChatIDCopyWith<$Res> get id;
  @override
  $MessageIDCopyWith<$Res>? get lastMessageID;
}

/// @nodoc
class __$$MonologueChatCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$MonologueChat>
    implements _$$MonologueChatCopyWith<$Res> {
  __$$MonologueChatCopyWithImpl(
      _$MonologueChat _value, $Res Function(_$MonologueChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unreadAmount = null,
    Object? title = null,
    Object? lastMessageID = freezed,
    Object? picUrl = freezed,
    Object? iconName = freezed,
  }) {
    return _then(_$MonologueChat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageID: freezed == lastMessageID
          ? _value.lastMessageID
          : lastMessageID // ignore: cast_nullable_to_non_nullable
              as MessageID?,
      picUrl: freezed == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonologueChat implements MonologueChat {
  const _$MonologueChat(
      {required this.id,
      required this.unreadAmount,
      required this.title,
      this.lastMessageID,
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
  final MessageID? lastMessageID;
  @override
  final String? picUrl;
  @override
  final String? iconName;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Chat.monologue(id: $id, unreadAmount: $unreadAmount, title: $title, lastMessageID: $lastMessageID, picUrl: $picUrl, iconName: $iconName)';
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
            (identical(other.lastMessageID, lastMessageID) ||
                other.lastMessageID == lastMessageID) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, unreadAmount, title, lastMessageID, picUrl, iconName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonologueChatCopyWith<_$MonologueChat> get copyWith =>
      __$$MonologueChatCopyWithImpl<_$MonologueChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)
        monologue,
    required TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)
        dialogue,
    required TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)
        group,
  }) {
    return monologue(id, unreadAmount, title, lastMessageID, picUrl, iconName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)?
        monologue,
    TResult? Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)?
        dialogue,
    TResult? Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)?
        group,
  }) {
    return monologue?.call(
        id, unreadAmount, title, lastMessageID, picUrl, iconName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)?
        monologue,
    TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)?
        dialogue,
    TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)?
        group,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(
          id, unreadAmount, title, lastMessageID, picUrl, iconName);
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
      final MessageID? lastMessageID,
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
  MessageID? get lastMessageID;
  String? get picUrl;
  String? get iconName;
  @override
  @JsonKey(ignore: true)
  _$$MonologueChatCopyWith<_$MonologueChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogueChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$DialogueChatCopyWith(
          _$DialogueChat value, $Res Function(_$DialogueChat) then) =
      __$$DialogueChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id,
      int unreadAmount,
      UserID partnerID,
      MessageID? lastMessageID});

  @override
  $ChatIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get partnerID;
  @override
  $MessageIDCopyWith<$Res>? get lastMessageID;
}

/// @nodoc
class __$$DialogueChatCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$DialogueChat>
    implements _$$DialogueChatCopyWith<$Res> {
  __$$DialogueChatCopyWithImpl(
      _$DialogueChat _value, $Res Function(_$DialogueChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unreadAmount = null,
    Object? partnerID = null,
    Object? lastMessageID = freezed,
  }) {
    return _then(_$DialogueChat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as int,
      partnerID: null == partnerID
          ? _value.partnerID
          : partnerID // ignore: cast_nullable_to_non_nullable
              as UserID,
      lastMessageID: freezed == lastMessageID
          ? _value.lastMessageID
          : lastMessageID // ignore: cast_nullable_to_non_nullable
              as MessageID?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get partnerID {
    return $UserIDCopyWith<$Res>(_value.partnerID, (value) {
      return _then(_value.copyWith(partnerID: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$DialogueChat implements DialogueChat {
  const _$DialogueChat(
      {required this.id,
      required this.unreadAmount,
      required this.partnerID,
      this.lastMessageID,
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
  final MessageID? lastMessageID;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Chat.dialogue(id: $id, unreadAmount: $unreadAmount, partnerID: $partnerID, lastMessageID: $lastMessageID)';
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
            (identical(other.lastMessageID, lastMessageID) ||
                other.lastMessageID == lastMessageID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, unreadAmount, partnerID, lastMessageID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueChatCopyWith<_$DialogueChat> get copyWith =>
      __$$DialogueChatCopyWithImpl<_$DialogueChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)
        monologue,
    required TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)
        dialogue,
    required TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)
        group,
  }) {
    return dialogue(id, unreadAmount, partnerID, lastMessageID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)?
        monologue,
    TResult? Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)?
        dialogue,
    TResult? Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)?
        group,
  }) {
    return dialogue?.call(id, unreadAmount, partnerID, lastMessageID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)?
        monologue,
    TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)?
        dialogue,
    TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)?
        group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(id, unreadAmount, partnerID, lastMessageID);
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
      final MessageID? lastMessageID}) = _$DialogueChat;

  factory DialogueChat.fromJson(Map<String, dynamic> json) =
      _$DialogueChat.fromJson;

  @override
  ChatID get id;
  @override
  int get unreadAmount;
  UserID get partnerID;
  @override
  MessageID? get lastMessageID;
  @override
  @JsonKey(ignore: true)
  _$$DialogueChatCopyWith<_$DialogueChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$GroupChatCopyWith(
          _$GroupChat value, $Res Function(_$GroupChat) then) =
      __$$GroupChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id,
      int unreadAmount,
      String title,
      MessageID? lastMessageID,
      String? picUrl});

  @override
  $ChatIDCopyWith<$Res> get id;
  @override
  $MessageIDCopyWith<$Res>? get lastMessageID;
}

/// @nodoc
class __$$GroupChatCopyWithImpl<$Res>
    extends _$ChatCopyWithImpl<$Res, _$GroupChat>
    implements _$$GroupChatCopyWith<$Res> {
  __$$GroupChatCopyWithImpl(
      _$GroupChat _value, $Res Function(_$GroupChat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? unreadAmount = null,
    Object? title = null,
    Object? lastMessageID = freezed,
    Object? picUrl = freezed,
  }) {
    return _then(_$GroupChat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessageID: freezed == lastMessageID
          ? _value.lastMessageID
          : lastMessageID // ignore: cast_nullable_to_non_nullable
              as MessageID?,
      picUrl: freezed == picUrl
          ? _value.picUrl
          : picUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupChat implements GroupChat {
  const _$GroupChat(
      {required this.id,
      required this.unreadAmount,
      required this.title,
      this.lastMessageID,
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
  final MessageID? lastMessageID;
  @override
  final String? picUrl;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Chat.group(id: $id, unreadAmount: $unreadAmount, title: $title, lastMessageID: $lastMessageID, picUrl: $picUrl)';
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
            (identical(other.lastMessageID, lastMessageID) ||
                other.lastMessageID == lastMessageID) &&
            (identical(other.picUrl, picUrl) || other.picUrl == picUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, unreadAmount, title, lastMessageID, picUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupChatCopyWith<_$GroupChat> get copyWith =>
      __$$GroupChatCopyWithImpl<_$GroupChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)
        monologue,
    required TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)
        dialogue,
    required TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)
        group,
  }) {
    return group(id, unreadAmount, title, lastMessageID, picUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)?
        monologue,
    TResult? Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)?
        dialogue,
    TResult? Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)?
        group,
  }) {
    return group?.call(id, unreadAmount, title, lastMessageID, picUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl, String? iconName)?
        monologue,
    TResult Function(ChatID id, int unreadAmount, UserID partnerID,
            MessageID? lastMessageID)?
        dialogue,
    TResult Function(ChatID id, int unreadAmount, String title,
            MessageID? lastMessageID, String? picUrl)?
        group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(id, unreadAmount, title, lastMessageID, picUrl);
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
      final MessageID? lastMessageID,
      final String? picUrl}) = _$GroupChat;

  factory GroupChat.fromJson(Map<String, dynamic> json) = _$GroupChat.fromJson;

  @override
  ChatID get id;
  @override
  int get unreadAmount;
  String get title;
  @override
  MessageID? get lastMessageID;
  String? get picUrl;
  @override
  @JsonKey(ignore: true)
  _$$GroupChatCopyWith<_$GroupChat> get copyWith =>
      throw _privateConstructorUsedError;
}
