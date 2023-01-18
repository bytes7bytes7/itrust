// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_mute.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMute _$ChatMuteFromJson(Map<String, dynamic> json) {
  return _ChatMute.fromJson(json);
}

/// @nodoc
mixin _$ChatMute {
  ChatID get chatID => throw _privateConstructorUsedError;
  MuteType get type => throw _privateConstructorUsedError;
  Duration? get muteAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMuteCopyWith<ChatMute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMuteCopyWith<$Res> {
  factory $ChatMuteCopyWith(ChatMute value, $Res Function(ChatMute) then) =
      _$ChatMuteCopyWithImpl<$Res, ChatMute>;
  @useResult
  $Res call({ChatID chatID, MuteType type, Duration? muteAt});

  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class _$ChatMuteCopyWithImpl<$Res, $Val extends ChatMute>
    implements $ChatMuteCopyWith<$Res> {
  _$ChatMuteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? type = null,
    Object? muteAt = freezed,
  }) {
    return _then(_value.copyWith(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MuteType,
      muteAt: freezed == muteAt
          ? _value.muteAt
          : muteAt // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ) as $Val);
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
abstract class _$$_ChatMuteCopyWith<$Res> implements $ChatMuteCopyWith<$Res> {
  factory _$$_ChatMuteCopyWith(
          _$_ChatMute value, $Res Function(_$_ChatMute) then) =
      __$$_ChatMuteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatID chatID, MuteType type, Duration? muteAt});

  @override
  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$_ChatMuteCopyWithImpl<$Res>
    extends _$ChatMuteCopyWithImpl<$Res, _$_ChatMute>
    implements _$$_ChatMuteCopyWith<$Res> {
  __$$_ChatMuteCopyWithImpl(
      _$_ChatMute _value, $Res Function(_$_ChatMute) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? type = null,
    Object? muteAt = freezed,
  }) {
    return _then(_$_ChatMute(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MuteType,
      muteAt: freezed == muteAt
          ? _value.muteAt
          : muteAt // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatMute implements _ChatMute {
  const _$_ChatMute({required this.chatID, required this.type, this.muteAt});

  factory _$_ChatMute.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMuteFromJson(json);

  @override
  final ChatID chatID;
  @override
  final MuteType type;
  @override
  final Duration? muteAt;

  @override
  String toString() {
    return 'ChatMute(chatID: $chatID, type: $type, muteAt: $muteAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMute &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.muteAt, muteAt) || other.muteAt == muteAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatID, type, muteAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatMuteCopyWith<_$_ChatMute> get copyWith =>
      __$$_ChatMuteCopyWithImpl<_$_ChatMute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMuteToJson(
      this,
    );
  }
}

abstract class _ChatMute implements ChatMute {
  const factory _ChatMute(
      {required final ChatID chatID,
      required final MuteType type,
      final Duration? muteAt}) = _$_ChatMute;

  factory _ChatMute.fromJson(Map<String, dynamic> json) = _$_ChatMute.fromJson;

  @override
  ChatID get chatID;
  @override
  MuteType get type;
  @override
  Duration? get muteAt;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMuteCopyWith<_$_ChatMute> get copyWith =>
      throw _privateConstructorUsedError;
}
