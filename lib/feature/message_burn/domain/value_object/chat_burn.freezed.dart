// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_burn.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatBurn _$ChatBurnFromJson(Map<String, dynamic> json) {
  return _ChatBurn.fromJson(json);
}

/// @nodoc
mixin _$ChatBurn {
  ChatID get chatID => throw _privateConstructorUsedError;
  bool get burn => throw _privateConstructorUsedError;
  Duration? get burnAfter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatBurnCopyWith<ChatBurn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatBurnCopyWith<$Res> {
  factory $ChatBurnCopyWith(ChatBurn value, $Res Function(ChatBurn) then) =
      _$ChatBurnCopyWithImpl<$Res, ChatBurn>;
  @useResult
  $Res call({ChatID chatID, bool burn, Duration? burnAfter});

  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class _$ChatBurnCopyWithImpl<$Res, $Val extends ChatBurn>
    implements $ChatBurnCopyWith<$Res> {
  _$ChatBurnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? burn = null,
    Object? burnAfter = freezed,
  }) {
    return _then(_value.copyWith(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      burn: null == burn
          ? _value.burn
          : burn // ignore: cast_nullable_to_non_nullable
              as bool,
      burnAfter: freezed == burnAfter
          ? _value.burnAfter
          : burnAfter // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ChatBurnCopyWith<$Res> implements $ChatBurnCopyWith<$Res> {
  factory _$$_ChatBurnCopyWith(
          _$_ChatBurn value, $Res Function(_$_ChatBurn) then) =
      __$$_ChatBurnCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChatID chatID, bool burn, Duration? burnAfter});

  @override
  $ChatIDCopyWith<$Res> get chatID;
}

/// @nodoc
class __$$_ChatBurnCopyWithImpl<$Res>
    extends _$ChatBurnCopyWithImpl<$Res, _$_ChatBurn>
    implements _$$_ChatBurnCopyWith<$Res> {
  __$$_ChatBurnCopyWithImpl(
      _$_ChatBurn _value, $Res Function(_$_ChatBurn) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatID = null,
    Object? burn = null,
    Object? burnAfter = freezed,
  }) {
    return _then(_$_ChatBurn(
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as ChatID,
      burn: null == burn
          ? _value.burn
          : burn // ignore: cast_nullable_to_non_nullable
              as bool,
      burnAfter: freezed == burnAfter
          ? _value.burnAfter
          : burnAfter // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatBurn implements _ChatBurn {
  const _$_ChatBurn({required this.chatID, required this.burn, this.burnAfter});

  factory _$_ChatBurn.fromJson(Map<String, dynamic> json) =>
      _$$_ChatBurnFromJson(json);

  @override
  final ChatID chatID;
  @override
  final bool burn;
  @override
  final Duration? burnAfter;

  @override
  String toString() {
    return 'ChatBurn(chatID: $chatID, burn: $burn, burnAfter: $burnAfter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatBurn &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.burn, burn) || other.burn == burn) &&
            (identical(other.burnAfter, burnAfter) ||
                other.burnAfter == burnAfter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatID, burn, burnAfter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatBurnCopyWith<_$_ChatBurn> get copyWith =>
      __$$_ChatBurnCopyWithImpl<_$_ChatBurn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatBurnToJson(
      this,
    );
  }
}

abstract class _ChatBurn implements ChatBurn {
  const factory _ChatBurn(
      {required final ChatID chatID,
      required final bool burn,
      final Duration? burnAfter}) = _$_ChatBurn;

  factory _ChatBurn.fromJson(Map<String, dynamic> json) = _$_ChatBurn.fromJson;

  @override
  ChatID get chatID;
  @override
  bool get burn;
  @override
  Duration? get burnAfter;
  @override
  @JsonKey(ignore: true)
  _$$_ChatBurnCopyWith<_$_ChatBurn> get copyWith =>
      throw _privateConstructorUsedError;
}
