// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'end':
      return EndUserInfo.fromJson(json);
    case 'staff':
      return StaffUserInfo.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserInfo',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserInfo {
  UserID get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id) end,
    required TResult Function(UserID id) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id)? end,
    TResult? Function(UserID id)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id)? end,
    TResult Function(UserID id)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfo value) end,
    required TResult Function(StaffUserInfo value) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfo value)? end,
    TResult? Function(StaffUserInfo value)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfo value)? end,
    TResult Function(StaffUserInfo value)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoCopyWith<UserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
  @useResult
  $Res call({UserID id});

  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get id {
    return $UserIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EndUserInfoCopyWith<$Res> implements $UserInfoCopyWith<$Res> {
  factory _$$EndUserInfoCopyWith(
          _$EndUserInfo value, $Res Function(_$EndUserInfo) then) =
      __$$EndUserInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID id});

  @override
  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$EndUserInfoCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$EndUserInfo>
    implements _$$EndUserInfoCopyWith<$Res> {
  __$$EndUserInfoCopyWithImpl(
      _$EndUserInfo _value, $Res Function(_$EndUserInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$EndUserInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndUserInfo implements EndUserInfo {
  const _$EndUserInfo({required this.id, final String? $type})
      : $type = $type ?? 'end';

  factory _$EndUserInfo.fromJson(Map<String, dynamic> json) =>
      _$$EndUserInfoFromJson(json);

  @override
  final UserID id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserInfo.end(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUserInfo &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserInfoCopyWith<_$EndUserInfo> get copyWith =>
      __$$EndUserInfoCopyWithImpl<_$EndUserInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id) end,
    required TResult Function(UserID id) staff,
  }) {
    return end(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id)? end,
    TResult? Function(UserID id)? staff,
  }) {
    return end?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id)? end,
    TResult Function(UserID id)? staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfo value) end,
    required TResult Function(StaffUserInfo value) staff,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfo value)? end,
    TResult? Function(StaffUserInfo value)? staff,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfo value)? end,
    TResult Function(StaffUserInfo value)? staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EndUserInfoToJson(
      this,
    );
  }
}

abstract class EndUserInfo implements UserInfo {
  const factory EndUserInfo({required final UserID id}) = _$EndUserInfo;

  factory EndUserInfo.fromJson(Map<String, dynamic> json) =
      _$EndUserInfo.fromJson;

  @override
  UserID get id;
  @override
  @JsonKey(ignore: true)
  _$$EndUserInfoCopyWith<_$EndUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffUserInfoCopyWith<$Res>
    implements $UserInfoCopyWith<$Res> {
  factory _$$StaffUserInfoCopyWith(
          _$StaffUserInfo value, $Res Function(_$StaffUserInfo) then) =
      __$$StaffUserInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID id});

  @override
  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$StaffUserInfoCopyWithImpl<$Res>
    extends _$UserInfoCopyWithImpl<$Res, _$StaffUserInfo>
    implements _$$StaffUserInfoCopyWith<$Res> {
  __$$StaffUserInfoCopyWithImpl(
      _$StaffUserInfo _value, $Res Function(_$StaffUserInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$StaffUserInfo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffUserInfo implements StaffUserInfo {
  const _$StaffUserInfo({required this.id, final String? $type})
      : $type = $type ?? 'staff';

  factory _$StaffUserInfo.fromJson(Map<String, dynamic> json) =>
      _$$StaffUserInfoFromJson(json);

  @override
  final UserID id;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserInfo.staff(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUserInfo &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffUserInfoCopyWith<_$StaffUserInfo> get copyWith =>
      __$$StaffUserInfoCopyWithImpl<_$StaffUserInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id) end,
    required TResult Function(UserID id) staff,
  }) {
    return staff(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id)? end,
    TResult? Function(UserID id)? staff,
  }) {
    return staff?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id)? end,
    TResult Function(UserID id)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserInfo value) end,
    required TResult Function(StaffUserInfo value) staff,
  }) {
    return staff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserInfo value)? end,
    TResult? Function(StaffUserInfo value)? staff,
  }) {
    return staff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserInfo value)? end,
    TResult Function(StaffUserInfo value)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffUserInfoToJson(
      this,
    );
  }
}

abstract class StaffUserInfo implements UserInfo {
  const factory StaffUserInfo({required final UserID id}) = _$StaffUserInfo;

  factory StaffUserInfo.fromJson(Map<String, dynamic> json) =
      _$StaffUserInfo.fromJson;

  @override
  UserID get id;
  @override
  @JsonKey(ignore: true)
  _$$StaffUserInfoCopyWith<_$StaffUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
