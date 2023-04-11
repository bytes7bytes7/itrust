// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_session_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceSessionID _$DeviceSessionIDFromJson(Map<String, dynamic> json) {
  return _DeviceSessionID.fromJson(json);
}

/// @nodoc
mixin _$DeviceSessionID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceSessionIDCopyWith<DeviceSessionID> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceSessionIDCopyWith<$Res> {
  factory $DeviceSessionIDCopyWith(
          DeviceSessionID value, $Res Function(DeviceSessionID) then) =
      _$DeviceSessionIDCopyWithImpl<$Res, DeviceSessionID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$DeviceSessionIDCopyWithImpl<$Res, $Val extends DeviceSessionID>
    implements $DeviceSessionIDCopyWith<$Res> {
  _$DeviceSessionIDCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeviceSessionIDCopyWith<$Res>
    implements $DeviceSessionIDCopyWith<$Res> {
  factory _$$_DeviceSessionIDCopyWith(
          _$_DeviceSessionID value, $Res Function(_$_DeviceSessionID) then) =
      __$$_DeviceSessionIDCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_DeviceSessionIDCopyWithImpl<$Res>
    extends _$DeviceSessionIDCopyWithImpl<$Res, _$_DeviceSessionID>
    implements _$$_DeviceSessionIDCopyWith<$Res> {
  __$$_DeviceSessionIDCopyWithImpl(
      _$_DeviceSessionID _value, $Res Function(_$_DeviceSessionID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_DeviceSessionID(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeviceSessionID extends _DeviceSessionID {
  const _$_DeviceSessionID(this.value) : super._();

  factory _$_DeviceSessionID.fromJson(Map<String, dynamic> json) =>
      _$$_DeviceSessionIDFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'DeviceSessionID(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeviceSessionID &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeviceSessionIDCopyWith<_$_DeviceSessionID> get copyWith =>
      __$$_DeviceSessionIDCopyWithImpl<_$_DeviceSessionID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeviceSessionIDToJson(
      this,
    );
  }
}

abstract class _DeviceSessionID extends DeviceSessionID {
  const factory _DeviceSessionID(final String value) = _$_DeviceSessionID;
  const _DeviceSessionID._() : super._();

  factory _DeviceSessionID.fromJson(Map<String, dynamic> json) =
      _$_DeviceSessionID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_DeviceSessionIDCopyWith<_$_DeviceSessionID> get copyWith =>
      throw _privateConstructorUsedError;
}
