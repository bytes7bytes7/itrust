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
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  ChatID get id => throw _privateConstructorUsedError;
  String? get avatarUrl =>
      throw _privateConstructorUsedError; // Name of icon if [avatarUrl] == null
  String? get icon => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;
  int get unreadAmount => throw _privateConstructorUsedError;
  ChatType get chatType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res, Chat>;
  @useResult
  $Res call(
      {ChatID id,
      String? avatarUrl,
      String? icon,
      String title,
      List<Message> messages,
      int unreadAmount,
      ChatType chatType});

  $ChatIDCopyWith<$Res> get id;
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
    Object? avatarUrl = freezed,
    Object? icon = freezed,
    Object? title = null,
    Object? messages = null,
    Object? unreadAmount = null,
    Object? chatType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as int,
      chatType: null == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as ChatType,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatIDCopyWith<$Res> get id {
    return $ChatIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChatID id,
      String? avatarUrl,
      String? icon,
      String title,
      List<Message> messages,
      int unreadAmount,
      ChatType chatType});

  @override
  $ChatIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res, _$_Chat>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrl = freezed,
    Object? icon = freezed,
    Object? title = null,
    Object? messages = null,
    Object? unreadAmount = null,
    Object? chatType = null,
  }) {
    return _then(_$_Chat(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ChatID,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as int,
      chatType: null == chatType
          ? _value.chatType
          : chatType // ignore: cast_nullable_to_non_nullable
              as ChatType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.id,
      this.avatarUrl,
      this.icon,
      required this.title,
      required final List<Message> messages,
      required this.unreadAmount,
      required this.chatType})
      : _messages = messages;

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override
  final ChatID id;
  @override
  final String? avatarUrl;
// Name of icon if [avatarUrl] == null
  @override
  final String? icon;
  @override
  final String title;
  final List<Message> _messages;
  @override
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final int unreadAmount;
  @override
  final ChatType chatType;

  @override
  String toString() {
    return 'Chat(id: $id, avatarUrl: $avatarUrl, icon: $icon, title: $title, messages: $messages, unreadAmount: $unreadAmount, chatType: $chatType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.unreadAmount, unreadAmount) ||
                other.unreadAmount == unreadAmount) &&
            (identical(other.chatType, chatType) ||
                other.chatType == chatType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, avatarUrl, icon, title,
      const DeepCollectionEquality().hash(_messages), unreadAmount, chatType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(
      this,
    );
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required final ChatID id,
      final String? avatarUrl,
      final String? icon,
      required final String title,
      required final List<Message> messages,
      required final int unreadAmount,
      required final ChatType chatType}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  ChatID get id;
  @override
  String? get avatarUrl;
  @override // Name of icon if [avatarUrl] == null
  String? get icon;
  @override
  String get title;
  @override
  List<Message> get messages;
  @override
  int get unreadAmount;
  @override
  ChatType get chatType;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}
