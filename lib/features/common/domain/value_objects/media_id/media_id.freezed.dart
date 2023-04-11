// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaID _$MediaIDFromJson(Map<String, dynamic> json) {
  return _MediaID.fromJson(json);
}

/// @nodoc
mixin _$MediaID {
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaIDCopyWith<MediaID> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaIDCopyWith<$Res> {
  factory $MediaIDCopyWith(MediaID value, $Res Function(MediaID) then) =
      _$MediaIDCopyWithImpl<$Res, MediaID>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class _$MediaIDCopyWithImpl<$Res, $Val extends MediaID>
    implements $MediaIDCopyWith<$Res> {
  _$MediaIDCopyWithImpl(this._value, this._then);

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
abstract class _$$_MediaIDCopyWith<$Res> implements $MediaIDCopyWith<$Res> {
  factory _$$_MediaIDCopyWith(
          _$_MediaID value, $Res Function(_$_MediaID) then) =
      __$$_MediaIDCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_MediaIDCopyWithImpl<$Res>
    extends _$MediaIDCopyWithImpl<$Res, _$_MediaID>
    implements _$$_MediaIDCopyWith<$Res> {
  __$$_MediaIDCopyWithImpl(_$_MediaID _value, $Res Function(_$_MediaID) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_MediaID(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaID extends _MediaID {
  const _$_MediaID(this.value) : super._();

  factory _$_MediaID.fromJson(Map<String, dynamic> json) =>
      _$$_MediaIDFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'MediaID(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaID &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaIDCopyWith<_$_MediaID> get copyWith =>
      __$$_MediaIDCopyWithImpl<_$_MediaID>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaIDToJson(
      this,
    );
  }
}

abstract class _MediaID extends MediaID {
  const factory _MediaID(final String value) = _$_MediaID;
  const _MediaID._() : super._();

  factory _MediaID.fromJson(Map<String, dynamic> json) = _$_MediaID.fromJson;

  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$_MediaIDCopyWith<_$_MediaID> get copyWith =>
      throw _privateConstructorUsedError;
}
