// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageID _$MessageIDFromJson(Map<String, dynamic> json) {
  return _MessageID.fromJson(json);
}

/// @nodoc
mixin _$MessageID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageIDCopyWith<MessageID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageIDCopyWith<$Res> {
  factory $MessageIDCopyWith(MessageID value, $Res Function(MessageID) then) =
      _$MessageIDCopyWithImpl<$Res, MessageID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$MessageIDCopyWithImpl<$Res, $Val extends MessageID>
    implements $MessageIDCopyWith<$Res> {
  _$MessageIDCopyWithImpl(this._value, this._then);

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
abstract class _$$_MessageIDCopyWith<$Res> implements $MessageIDCopyWith<$Res> {
  factory _$$_MessageIDCopyWith(
          _$_MessageID value, $Res Function(_$_MessageID) then) =
      __$$_MessageIDCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_MessageIDCopyWithImpl<$Res>
    extends _$MessageIDCopyWithImpl<$Res, _$_MessageID>
    implements _$$_MessageIDCopyWith<$Res> {
  __$$_MessageIDCopyWithImpl(
      _$_MessageID _value, $Res Function(_$_MessageID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_MessageID(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageID extends _MessageID {
  const _$_MessageID(this.value) : super._();

  factory _$_MessageID.fromJson(Map<String, dynamic> json) =>
      _$$_MessageIDFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'MessageID(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageID &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageIDCopyWith<_$_MessageID> get copyWith =>
      __$$_MessageIDCopyWithImpl<_$_MessageID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageIDToJson(
      this,
    );
  }
}

abstract class _MessageID extends MessageID {
  const factory _MessageID(final String value) = _$_MessageID;
  const _MessageID._() : super._();

  factory _MessageID.fromJson(Map<String, dynamic> json) =
      _$_MessageID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_MessageIDCopyWith<_$_MessageID> get copyWith =>
      throw _privateConstructorUsedError;
}
