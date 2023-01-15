// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatID _$ChatIDFromJson(Map<String, dynamic> json) {
  return _ChatID.fromJson(json);
}

/// @nodoc
mixin _$ChatID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatIDCopyWith<ChatID> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatIDCopyWith<$Res> {
  factory $ChatIDCopyWith(ChatID value, $Res Function(ChatID) then) =
      _$ChatIDCopyWithImpl<$Res, ChatID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$ChatIDCopyWithImpl<$Res, $Val extends ChatID>
    implements $ChatIDCopyWith<$Res> {
  _$ChatIDCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatIDCopyWith<$Res> implements $ChatIDCopyWith<$Res> {
  factory _$$_ChatIDCopyWith(_$_ChatID value, $Res Function(_$_ChatID) then) =
      __$$_ChatIDCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_ChatIDCopyWithImpl<$Res>
    extends _$ChatIDCopyWithImpl<$Res, _$_ChatID>
    implements _$$_ChatIDCopyWith<$Res> {
  __$$_ChatIDCopyWithImpl(_$_ChatID _value, $Res Function(_$_ChatID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_ChatID(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatID extends _ChatID {
  const _$_ChatID(this.value) : super._();

  factory _$_ChatID.fromJson(Map<String, dynamic> json) =>
      _$$_ChatIDFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'ChatID(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatID &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatIDCopyWith<_$_ChatID> get copyWith =>
      __$$_ChatIDCopyWithImpl<_$_ChatID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatIDToJson(
      this,
    );
  }
}

abstract class _ChatID extends ChatID {
  const factory _ChatID(final String value) = _$_ChatID;
  const _ChatID._() : super._();

  factory _ChatID.fromJson(Map<String, dynamic> json) = _$_ChatID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_ChatIDCopyWith<_$_ChatID> get copyWith =>
      throw _privateConstructorUsedError;
}
