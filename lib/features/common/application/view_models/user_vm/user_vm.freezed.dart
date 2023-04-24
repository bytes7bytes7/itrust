// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserVM {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarsAmount => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;
  String? get nick => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)
        end,
    required TResult Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)
        staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)?
        end,
    TResult? Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)?
        staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)?
        end,
    TResult Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)?
        staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserVM value) end,
    required TResult Function(StaffUserVM value) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserVM value)? end,
    TResult? Function(StaffUserVM value)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserVM value)? end,
    TResult Function(StaffUserVM value)? staff,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserVMCopyWith<UserVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserVMCopyWith<$Res> {
  factory $UserVMCopyWith(UserVM value, $Res Function(UserVM) then) =
      _$UserVMCopyWithImpl<$Res, UserVM>;
  @useResult
  $Res call(
      {String id,
      String name,
      String avatarsAmount,
      String? avatarUrl,
      String? nick});
}

/// @nodoc
class _$UserVMCopyWithImpl<$Res, $Val extends UserVM>
    implements $UserVMCopyWith<$Res> {
  _$UserVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarsAmount = null,
    Object? avatarUrl = freezed,
    Object? nick = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarsAmount: null == avatarsAmount
          ? _value.avatarsAmount
          : avatarsAmount // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EndUserVMCopyWith<$Res> implements $UserVMCopyWith<$Res> {
  factory _$$EndUserVMCopyWith(
          _$EndUserVM value, $Res Function(_$EndUserVM) then) =
      __$$EndUserVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      bool isOnline,
      String avatarsAmount,
      String? lastSeenAt,
      String? avatarUrl,
      String? nick});
}

/// @nodoc
class __$$EndUserVMCopyWithImpl<$Res>
    extends _$UserVMCopyWithImpl<$Res, _$EndUserVM>
    implements _$$EndUserVMCopyWith<$Res> {
  __$$EndUserVMCopyWithImpl(
      _$EndUserVM _value, $Res Function(_$EndUserVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isOnline = null,
    Object? avatarsAmount = null,
    Object? lastSeenAt = freezed,
    Object? avatarUrl = freezed,
    Object? nick = freezed,
  }) {
    return _then(_$EndUserVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isOnline: null == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool,
      avatarsAmount: null == avatarsAmount
          ? _value.avatarsAmount
          : avatarsAmount // ignore: cast_nullable_to_non_nullable
              as String,
      lastSeenAt: freezed == lastSeenAt
          ? _value.lastSeenAt
          : lastSeenAt // ignore: cast_nullable_to_non_nullable
              as String?,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EndUserVM implements EndUserVM {
  const _$EndUserVM(
      {required this.id,
      required this.name,
      required this.isOnline,
      required this.avatarsAmount,
      this.lastSeenAt,
      this.avatarUrl,
      this.nick});

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isOnline;
  @override
  final String avatarsAmount;
  @override
  final String? lastSeenAt;
  @override
  final String? avatarUrl;
  @override
  final String? nick;

  @override
  String toString() {
    return 'UserVM.end(id: $id, name: $name, isOnline: $isOnline, avatarsAmount: $avatarsAmount, lastSeenAt: $lastSeenAt, avatarUrl: $avatarUrl, nick: $nick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUserVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.avatarsAmount, avatarsAmount) ||
                other.avatarsAmount == avatarsAmount) &&
            (identical(other.lastSeenAt, lastSeenAt) ||
                other.lastSeenAt == lastSeenAt) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.nick, nick) || other.nick == nick));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isOnline,
      avatarsAmount, lastSeenAt, avatarUrl, nick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserVMCopyWith<_$EndUserVM> get copyWith =>
      __$$EndUserVMCopyWithImpl<_$EndUserVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)
        end,
    required TResult Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)
        staff,
  }) {
    return end(id, name, isOnline, avatarsAmount, lastSeenAt, avatarUrl, nick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)?
        end,
    TResult? Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)?
        staff,
  }) {
    return end?.call(
        id, name, isOnline, avatarsAmount, lastSeenAt, avatarUrl, nick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)?
        end,
    TResult Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)?
        staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(
          id, name, isOnline, avatarsAmount, lastSeenAt, avatarUrl, nick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserVM value) end,
    required TResult Function(StaffUserVM value) staff,
  }) {
    return end(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserVM value)? end,
    TResult? Function(StaffUserVM value)? staff,
  }) {
    return end?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserVM value)? end,
    TResult Function(StaffUserVM value)? staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(this);
    }
    return orElse();
  }
}

abstract class EndUserVM implements UserVM {
  const factory EndUserVM(
      {required final String id,
      required final String name,
      required final bool isOnline,
      required final String avatarsAmount,
      final String? lastSeenAt,
      final String? avatarUrl,
      final String? nick}) = _$EndUserVM;

  @override
  String get id;
  @override
  String get name;
  bool get isOnline;
  @override
  String get avatarsAmount;
  String? get lastSeenAt;
  @override
  String? get avatarUrl;
  @override
  String? get nick;
  @override
  @JsonKey(ignore: true)
  _$$EndUserVMCopyWith<_$EndUserVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffUserVMCopyWith<$Res> implements $UserVMCopyWith<$Res> {
  factory _$$StaffUserVMCopyWith(
          _$StaffUserVM value, $Res Function(_$StaffUserVM) then) =
      __$$StaffUserVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String avatarsAmount,
      String? avatarUrl,
      String? nick});
}

/// @nodoc
class __$$StaffUserVMCopyWithImpl<$Res>
    extends _$UserVMCopyWithImpl<$Res, _$StaffUserVM>
    implements _$$StaffUserVMCopyWith<$Res> {
  __$$StaffUserVMCopyWithImpl(
      _$StaffUserVM _value, $Res Function(_$StaffUserVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarsAmount = null,
    Object? avatarUrl = freezed,
    Object? nick = freezed,
  }) {
    return _then(_$StaffUserVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarsAmount: null == avatarsAmount
          ? _value.avatarsAmount
          : avatarsAmount // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      nick: freezed == nick
          ? _value.nick
          : nick // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$StaffUserVM implements StaffUserVM {
  const _$StaffUserVM(
      {required this.id,
      required this.name,
      required this.avatarsAmount,
      this.avatarUrl,
      this.nick});

  @override
  final String id;
  @override
  final String name;
  @override
  final String avatarsAmount;
  @override
  final String? avatarUrl;
  @override
  final String? nick;

  @override
  String toString() {
    return 'UserVM.staff(id: $id, name: $name, avatarsAmount: $avatarsAmount, avatarUrl: $avatarUrl, nick: $nick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUserVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarsAmount, avatarsAmount) ||
                other.avatarsAmount == avatarsAmount) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.nick, nick) || other.nick == nick));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, avatarsAmount, avatarUrl, nick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffUserVMCopyWith<_$StaffUserVM> get copyWith =>
      __$$StaffUserVMCopyWithImpl<_$StaffUserVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)
        end,
    required TResult Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)
        staff,
  }) {
    return staff(id, name, avatarsAmount, avatarUrl, nick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)?
        end,
    TResult? Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)?
        staff,
  }) {
    return staff?.call(id, name, avatarsAmount, avatarUrl, nick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String id,
            String name,
            bool isOnline,
            String avatarsAmount,
            String? lastSeenAt,
            String? avatarUrl,
            String? nick)?
        end,
    TResult Function(String id, String name, String avatarsAmount,
            String? avatarUrl, String? nick)?
        staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(id, name, avatarsAmount, avatarUrl, nick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndUserVM value) end,
    required TResult Function(StaffUserVM value) staff,
  }) {
    return staff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndUserVM value)? end,
    TResult? Function(StaffUserVM value)? staff,
  }) {
    return staff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndUserVM value)? end,
    TResult Function(StaffUserVM value)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(this);
    }
    return orElse();
  }
}

abstract class StaffUserVM implements UserVM {
  const factory StaffUserVM(
      {required final String id,
      required final String name,
      required final String avatarsAmount,
      final String? avatarUrl,
      final String? nick}) = _$StaffUserVM;

  @override
  String get id;
  @override
  String get name;
  @override
  String get avatarsAmount;
  @override
  String? get avatarUrl;
  @override
  String? get nick;
  @override
  @JsonKey(ignore: true)
  _$$StaffUserVMCopyWith<_$StaffUserVM> get copyWith =>
      throw _privateConstructorUsedError;
}
