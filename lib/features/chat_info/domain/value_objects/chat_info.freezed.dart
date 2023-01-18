// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatInfo _$ChatInfoFromJson(Map<String, dynamic> json) {
  return _ChatInfo.fromJson(json);
}

/// @nodoc
mixin _$ChatInfo {
  ChatID get chatID => throw _privateConstructorUsedError;
  List<UserChatInfo> get participants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatInfoCopyWith<ChatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatInfoCopyWith<$Res> {
  factory $ChatInfoCopyWith(ChatInfo value, $Res Function(ChatInfo) then) =
      _$ChatInfoCopyWithImpl<$Res, ChatInfo>;
  @useResult
  $Res call({ChatID chatID, List<UserChatInfo> participants});

  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class _$ChatInfoCopyWithImpl<$Res, $Val extends ChatInfo>
    implements $ChatInfoCopyWith<$Res> {
  _$ChatInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? participants = null,
  }) {
    return _then(_value.copyWith(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      participants: null == participants
          ? _value.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<UserChatInfo>,
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
abstract class _$$_ChatInfoCopyWith<$Res> implements $ChatInfoCopyWith<$Res> {
  factory _$$_ChatInfoCopyWith(
          _$_ChatInfo value, $Res Function(_$_ChatInfo) then) =
      __$$_ChatInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatID chatID, List<UserChatInfo> participants});

  @override
  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$_ChatInfoCopyWithImpl<$Res>
    extends _$ChatInfoCopyWithImpl<$Res, _$_ChatInfo>
    implements _$$_ChatInfoCopyWith<$Res> {
  __$$_ChatInfoCopyWithImpl(
      _$_ChatInfo _value, $Res Function(_$_ChatInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? participants = null,
  }) {
    return _then(_$_ChatInfo(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      participants: null == participants
          ? _value._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<UserChatInfo>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatInfo implements _ChatInfo {
  const _$_ChatInfo(
      {required this.chatID, required final List<UserChatInfo> participants})
      : _participants = participants;

  factory _$_ChatInfo.fromJson(Map<String, dynamic> json) =>
      _$$_ChatInfoFromJson(json);

  @override
  final ChatID chatID;
  final List<UserChatInfo> _participants;
  @override
  List<UserChatInfo> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  String toString() {
    return 'ChatInfo(chatID: $chatID, participants: $participants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatInfo &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, chatID, const DeepCollectionEquality().hash(_participants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatInfoCopyWith<_$_ChatInfo> get copyWith =>
      __$$_ChatInfoCopyWithImpl<_$_ChatInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatInfoToJson(
      this,
    );
  }
}

abstract class _ChatInfo implements ChatInfo {
  const factory _ChatInfo(
      {required final ChatID chatID,
      required final List<UserChatInfo> participants}) = _$_ChatInfo;

  factory _ChatInfo.fromJson(Map<String, dynamic> json) = _$_ChatInfo.fromJson;

  @override
  ChatID get chatID;
  @override
  List<UserChatInfo> get participants;
  @override
  @JsonKey(ignore: true)
  _$$_ChatInfoCopyWith<_$_ChatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
