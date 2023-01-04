// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthDetail _$AuthDetailFromJson(Map<String, dynamic> json) {
  return _AuthDetail.fromJson(json);
}

/// @nodoc
mixin _$AuthDetail {
  UserID get userID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDetailCopyWith<AuthDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDetailCopyWith<$Res> {
  factory $AuthDetailCopyWith(
          AuthDetail value, $Res Function(AuthDetail) then) =
      _$AuthDetailCopyWithImpl<$Res, AuthDetail>;
  @useResult
  $Res call({UserID userID, String name, String? avatarUrl});

  $UserIDCopyWith<$Res> get userID;
}

/// @nodoc
class _$AuthDetailCopyWithImpl<$Res, $Val extends AuthDetail>
    implements $AuthDetailCopyWith<$Res> {
  _$AuthDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_value.copyWith(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get userID {
    return $UserIDCopyWith<$Res>(_value.userID, (value) {
      return _then(_value.copyWith(userID: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthDetailCopyWith<$Res>
    implements $AuthDetailCopyWith<$Res> {
  factory _$$_AuthDetailCopyWith(
          _$_AuthDetail value, $Res Function(_$_AuthDetail) then) =
      __$$_AuthDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID userID, String name, String? avatarUrl});

  @override
  $UserIDCopyWith<$Res> get userID;
}

/// @nodoc
class __$$_AuthDetailCopyWithImpl<$Res>
    extends _$AuthDetailCopyWithImpl<$Res, _$_AuthDetail>
    implements _$$_AuthDetailCopyWith<$Res> {
  __$$_AuthDetailCopyWithImpl(
      _$_AuthDetail _value, $Res Function(_$_AuthDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$_AuthDetail(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as UserID,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDetail implements _AuthDetail {
  const _$_AuthDetail(
      {required this.userID, required this.name, this.avatarUrl});

  factory _$_AuthDetail.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDetailFromJson(json);

  @override
  final UserID userID;
  @override
  final String name;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'AuthDetail(userID: $userID, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDetail &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userID, name, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthDetailCopyWith<_$_AuthDetail> get copyWith =>
      __$$_AuthDetailCopyWithImpl<_$_AuthDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDetailToJson(
      this,
    );
  }
}

abstract class _AuthDetail implements AuthDetail {
  const factory _AuthDetail(
      {required final UserID userID,
      required final String name,
      final String? avatarUrl}) = _$_AuthDetail;

  factory _AuthDetail.fromJson(Map<String, dynamic> json) =
      _$_AuthDetail.fromJson;

  @override
  UserID get userID;
  @override
  String get name;
  @override
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDetailCopyWith<_$_AuthDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
