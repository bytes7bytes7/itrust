// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_chat_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserChatInfo _$UserChatInfoFromJson(Map<String, dynamic> json) {
  return _UserChatInfo.fromJson(json);
}

/// @nodoc
mixin _$UserChatInfo {
  User get user => throw _privateConstructorUsedError;
  ChatRole get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserChatInfoCopyWith<UserChatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserChatInfoCopyWith<$Res> {
  factory $UserChatInfoCopyWith(
          UserChatInfo value, $Res Function(UserChatInfo) then) =
      _$UserChatInfoCopyWithImpl<$Res, UserChatInfo>;
  @useResult
  $Res call({User user, ChatRole role});
}

/// @nodoc
class _$UserChatInfoCopyWithImpl<$Res, $Val extends UserChatInfo>
    implements $UserChatInfoCopyWith<$Res> {
  _$UserChatInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ChatRole,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserChatInfoCopyWith<$Res>
    implements $UserChatInfoCopyWith<$Res> {
  factory _$$_UserChatInfoCopyWith(
          _$_UserChatInfo value, $Res Function(_$_UserChatInfo) then) =
      __$$_UserChatInfoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, ChatRole role});
}

/// @nodoc
class __$$_UserChatInfoCopyWithImpl<$Res>
    extends _$UserChatInfoCopyWithImpl<$Res, _$_UserChatInfo>
    implements _$$_UserChatInfoCopyWith<$Res> {
  __$$_UserChatInfoCopyWithImpl(
      _$_UserChatInfo _value, $Res Function(_$_UserChatInfo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? role = null,
  }) {
    return _then(_$_UserChatInfo(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as ChatRole,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserChatInfo implements _UserChatInfo {
  const _$_UserChatInfo({required this.user, required this.role});

  factory _$_UserChatInfo.fromJson(Map<String, dynamic> json) =>
      _$$_UserChatInfoFromJson(json);

  @override
  final User user;
  @override
  final ChatRole role;

  @override
  String toString() {
    return 'UserChatInfo(user: $user, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserChatInfo &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserChatInfoCopyWith<_$_UserChatInfo> get copyWith =>
      __$$_UserChatInfoCopyWithImpl<_$_UserChatInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserChatInfoToJson(
      this,
    );
  }
}

abstract class _UserChatInfo implements UserChatInfo {
  const factory _UserChatInfo(
      {required final User user,
      required final ChatRole role}) = _$_UserChatInfo;

  factory _UserChatInfo.fromJson(Map<String, dynamic> json) =
      _$_UserChatInfo.fromJson;

  @override
  User get user;
  @override
  ChatRole get role;
  @override
  @JsonKey(ignore: true)
  _$$_UserChatInfoCopyWith<_$_UserChatInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
