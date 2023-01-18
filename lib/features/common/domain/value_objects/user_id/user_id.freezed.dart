// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserID _$UserIDFromJson(Map<String, dynamic> json) {
  return _UserID.fromJson(json);
}

/// @nodoc
mixin _$UserID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserIDCopyWith<UserID> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIDCopyWith<$Res> {
  factory $UserIDCopyWith(UserID value, $Res Function(UserID) then) =
      _$UserIDCopyWithImpl<$Res, UserID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$UserIDCopyWithImpl<$Res, $Val extends UserID>
    implements $UserIDCopyWith<$Res> {
  _$UserIDCopyWithImpl(this._value, this._then);

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
abstract class _$$_UserIDCopyWith<$Res> implements $UserIDCopyWith<$Res> {
  factory _$$_UserIDCopyWith(_$_UserID value, $Res Function(_$_UserID) then) =
      __$$_UserIDCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_UserIDCopyWithImpl<$Res>
    extends _$UserIDCopyWithImpl<$Res, _$_UserID>
    implements _$$_UserIDCopyWith<$Res> {
  __$$_UserIDCopyWithImpl(_$_UserID _value, $Res Function(_$_UserID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_UserID(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserID extends _UserID {
  const _$_UserID(this.value) : super._();

  factory _$_UserID.fromJson(Map<String, dynamic> json) =>
      _$$_UserIDFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'UserID(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserID &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserIDCopyWith<_$_UserID> get copyWith =>
      __$$_UserIDCopyWithImpl<_$_UserID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserIDToJson(
      this,
    );
  }
}

abstract class _UserID extends UserID {
  const factory _UserID(final String value) = _$_UserID;
  const _UserID._() : super._();

  factory _UserID.fromJson(Map<String, dynamic> json) = _$_UserID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_UserIDCopyWith<_$_UserID> get copyWith =>
      throw _privateConstructorUsedError;
}
