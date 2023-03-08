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
    case 'end':
      return EndUser.fromJson(json);
    case 'staff':
      return StaffUser.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'User', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$User {
  UserID get id => throw _privateConstructorUsedError;
  List<String> get avatarUrls => throw _privateConstructorUsedError;
  String? get nick => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)
        end,
    required TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)
        staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)?
        end,
    TResult? Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)?
        end,
    TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUser value) end,
    required TResult Function(StaffUser value) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUser value)? end,
    TResult? Function(StaffUser value)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUser value)? end,
    TResult Function(StaffUser value)? staff,
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
  $Res call({UserID id, List<String> avatarUrls, String? nick});

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
    Object? avatarUrls = null,
    Object? nick = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
      avatarUrls: null == avatarUrls
          ? _value.avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$EndUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$EndUserCopyWith(_$EndUser value, $Res Function(_$EndUser) then) =
      __$$EndUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserID id,
      String email,
      String firstName,
      List<String> avatarUrls,
      String? lastName,
      String? nick});

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
    Object? email = null,
    Object? firstName = null,
    Object? avatarUrls = null,
    Object? lastName = freezed,
    Object? nick = freezed,
  }) {
    return _then(_$EndUser(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UserID,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrls: null == avatarUrls
          ? _value._avatarUrls
          : avatarUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndUser implements EndUser {
  const _$EndUser(
      {required this.id,
      required this.email,
      required this.firstName,
      required final List<String> avatarUrls,
      this.lastName,
      this.nick,
      final String? $type})
      : _avatarUrls = avatarUrls,
        $type = $type ?? 'end';

  factory _$EndUser.fromJson(Map<String, dynamic> json) =>
      _$$EndUserFromJson(json);

  @override
  final UserID id;
  @override
  final String email;
  @override
  final String firstName;
  final List<String> _avatarUrls;
  @override
  List<String> get avatarUrls {
    if (_avatarUrls is EqualUnmodifiableListView) return _avatarUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_avatarUrls);
  }

  @override
  final String? lastName;
  @override
  final String? nick;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'User.end(id: $id, email: $email, firstName: $firstName, avatarUrls: $avatarUrls, lastName: $lastName, nick: $nick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            const DeepCollectionEquality()
                .equals(other._avatarUrls, _avatarUrls) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.nick, nick) || other.nick == nick));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, email, firstName,
      const DeepCollectionEquality().hash(_avatarUrls), lastName, nick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserCopyWith<_$EndUser> get copyWith =>
      __$$EndUserCopyWithImpl<_$EndUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)
        end,
    required TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)
        staff,
  }) {
    return end(id, email, firstName, avatarUrls, lastName, nick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)?
        end,
    TResult? Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
  }) {
    return end?.call(id, email, firstName, avatarUrls, lastName, nick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)?
        end,
    TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(id, email, firstName, avatarUrls, lastName, nick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUser value) end,
    required TResult Function(StaffUser value) staff,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUser value)? end,
    TResult? Function(StaffUser value)? staff,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUser value)? end,
    TResult Function(StaffUser value)? staff,
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
      required final String email,
      required final String firstName,
      required final List<String> avatarUrls,
      final String? lastName,
      final String? nick}) = _$EndUser;

  factory EndUser.fromJson(Map<String, dynamic> json) = _$EndUser.fromJson;

  @override
  UserID get id;
  String get email;
  String get firstName;
  @override
  List<String> get avatarUrls;
  String? get lastName;
  @override
  String? get nick;
  @override
  @JsonKey(ignore: true)
  _$$EndUserCopyWith<_$EndUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$StaffUserCopyWith(
          _$StaffUser value, $Res Function(_$StaffUser) then) =
      __$$StaffUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserID id, String name, List<String> avatarUrls, String? nick});

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
    Object? nick = freezed,
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
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.nick,
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

  @override
  final String? nick;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'User.staff(id: $id, name: $name, avatarUrls: $avatarUrls, nick: $nick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._avatarUrls, _avatarUrls) &&
            (identical(other.nick, nick) || other.nick == nick));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_avatarUrls), nick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffUserCopyWith<_$StaffUser> get copyWith =>
      __$$StaffUserCopyWithImpl<_$StaffUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)
        end,
    required TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)
        staff,
  }) {
    return staff(id, name, avatarUrls, nick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)?
        end,
    TResult? Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
  }) {
    return staff?.call(id, name, avatarUrls, nick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserID id, String email, String firstName,
            List<String> avatarUrls, String? lastName, String? nick)?
        end,
    TResult Function(
            UserID id, String name, List<String> avatarUrls, String? nick)?
        staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(id, name, avatarUrls, nick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUser value) end,
    required TResult Function(StaffUser value) staff,
  }) {
    return staff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUser value)? end,
    TResult? Function(StaffUser value)? staff,
  }) {
    return staff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUser value)? end,
    TResult Function(StaffUser value)? staff,
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
      required final List<String> avatarUrls,
      final String? nick}) = _$StaffUser;

  factory StaffUser.fromJson(Map<String, dynamic> json) = _$StaffUser.fromJson;

  @override
  UserID get id;
  String get name;
  @override
  List<String> get avatarUrls;
  @override
  String? get nick;
  @override
  @JsonKey(ignore: true)
  _$$StaffUserCopyWith<_$StaffUser> get copyWith =>
      throw _privateConstructorUsedError;
}
