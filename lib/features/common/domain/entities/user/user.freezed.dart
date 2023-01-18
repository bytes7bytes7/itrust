// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'staff':
      return StaffUser.fromJson(json);
    case 'end':
      return EndUser.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'User', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$User {
  UserID get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String> get avatarUrls => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id, String name, List<String> avatarUrls)
        staff,
    required TResult Function(
            UserID id, List<String> avatarUrls, String email, String? name)
        end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id, String name, List<String> avatarUrls)? staff,
    TResult? Function(
            UserID id, List<String> avatarUrls, String email, String? name)?
        end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id, String name, List<String> avatarUrls)? staff,
    TResult Function(
            UserID id, List<String> avatarUrls, String email, String? name)?
        end,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaffUser value) staff,
    required TResult Function(EndUser value) end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaffUser value)? staff,
    TResult? Function(EndUser value)? end,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaffUser value)? staff,
    TResult Function(EndUser value)? end,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({UserID id, String name, List<String> avatarUrls});

  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrls = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
      name: null == name
          ? _value.name!
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrls: null == avatarUrls
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
abstract class _$$StaffUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$StaffUserCopyWith(
          _$StaffUser value, $Res Function(_$StaffUser) then) =
      __$$StaffUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID id, String name, List<String> avatarUrls});

  @override
  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$StaffUserCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$StaffUser>
    implements _$$StaffUserCopyWith<$Res> {
  __$$StaffUserCopyWithImpl(
      _$StaffUser _value, $Res Function(_$StaffUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrls = null,
  }) {
    return _then(_$StaffUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrls: null == avatarUrls
          ? _value._avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffUser implements StaffUser {
  const _$StaffUser(
      {required this.id,
      required this.name,
      required final List<String> avatarUrls,
      final String? $type})
      : _avatarUrls = avatarUrls,
        $type = $type ?? 'staff';

  factory _$StaffUser.fromJson(Map<String, dynamic> json) =>
      _$$StaffUserFromJson(json);

  @override
  final UserID id;
  @override
  final String name;
  final List<String> _avatarUrls;
  @override
  List<String> get avatarUrls {
    if (_avatarUrls is EqualUnmodifiableListView) return _avatarUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatarUrls);
  }

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'User.staff(id: $id, name: $name, avatarUrls: $avatarUrls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._avatarUrls, _avatarUrls));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_avatarUrls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffUserCopyWith<_$StaffUser> get copyWith =>
      __$$StaffUserCopyWithImpl<_$StaffUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id, String name, List<String> avatarUrls)
        staff,
    required TResult Function(
            UserID id, List<String> avatarUrls, String email, String? name)
        end,
  }) {
    return staff(id, name, avatarUrls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id, String name, List<String> avatarUrls)? staff,
    TResult? Function(
            UserID id, List<String> avatarUrls, String email, String? name)?
        end,
  }) {
    return staff?.call(id, name, avatarUrls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id, String name, List<String> avatarUrls)? staff,
    TResult Function(
            UserID id, List<String> avatarUrls, String email, String? name)?
        end,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(id, name, avatarUrls);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaffUser value) staff,
    required TResult Function(EndUser value) end,
  }) {
    return staff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaffUser value)? staff,
    TResult? Function(EndUser value)? end,
  }) {
    return staff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaffUser value)? staff,
    TResult Function(EndUser value)? end,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffUserToJson(
      this,
    );
  }
}

abstract class StaffUser implements User {
  const factory StaffUser(
      {required final UserID id,
      required final String name,
      required final List<String> avatarUrls}) = _$StaffUser;

  factory StaffUser.fromJson(Map<String, dynamic> json) = _$StaffUser.fromJson;

  @override
  UserID get id;
  @override
  String get name;
  @override
  List<String> get avatarUrls;
  @override
  @JsonKey(ignore: true)
  _$$StaffUserCopyWith<_$StaffUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EndUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$EndUserCopyWith(_$EndUser value, $Res Function(_$EndUser) then) =
      __$$EndUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID id, List<String> avatarUrls, String email, String? name});

  @override
  $UserIDCopyWith<$Res> get id;
}

/// @nodoc
class __$$EndUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$EndUser>
    implements _$$EndUserCopyWith<$Res> {
  __$$EndUserCopyWithImpl(_$EndUser _value, $Res Function(_$EndUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? avatarUrls = null,
    Object? email = null,
    Object? name = freezed,
  }) {
    return _then(_$EndUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
      avatarUrls: null == avatarUrls
          ? _value._avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndUser implements EndUser {
  const _$EndUser(
      {required this.id,
      required final List<String> avatarUrls,
      required this.email,
      this.name,
      final String? $type})
      : _avatarUrls = avatarUrls,
        $type = $type ?? 'end';

  factory _$EndUser.fromJson(Map<String, dynamic> json) =>
      _$$EndUserFromJson(json);

  @override
  final UserID id;
  final List<String> _avatarUrls;
  @override
  List<String> get avatarUrls {
    if (_avatarUrls is EqualUnmodifiableListView) return _avatarUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatarUrls);
  }

  @override
  final String email;
  @override
  final String? name;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'User.end(id: $id, avatarUrls: $avatarUrls, email: $email, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUser &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._avatarUrls, _avatarUrls) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_avatarUrls), email, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserCopyWith<_$EndUser> get copyWith =>
      __$$EndUserCopyWithImpl<_$EndUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id, String name, List<String> avatarUrls)
        staff,
    required TResult Function(
            UserID id, List<String> avatarUrls, String email, String? name)
        end,
  }) {
    return end(id, avatarUrls, email, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id, String name, List<String> avatarUrls)? staff,
    TResult? Function(
            UserID id, List<String> avatarUrls, String email, String? name)?
        end,
  }) {
    return end?.call(id, avatarUrls, email, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id, String name, List<String> avatarUrls)? staff,
    TResult Function(
            UserID id, List<String> avatarUrls, String email, String? name)?
        end,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(id, avatarUrls, email, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StaffUser value) staff,
    required TResult Function(EndUser value) end,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StaffUser value)? staff,
    TResult? Function(EndUser value)? end,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StaffUser value)? staff,
    TResult Function(EndUser value)? end,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EndUserToJson(
      this,
    );
  }
}

abstract class EndUser implements User {
  const factory EndUser(
      {required final UserID id,
      required final List<String> avatarUrls,
      required final String email,
      final String? name}) = _$EndUser;

  factory EndUser.fromJson(Map<String, dynamic> json) = _$EndUser.fromJson;

  @override
  UserID get id;
  @override
  List<String> get avatarUrls;
  String get email;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$EndUserCopyWith<_$EndUser> get copyWith =>
      throw _privateConstructorUsedError;
}
