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
  switch (json['type']) {
    case 'end':
      return EndUserInfo.fromJson(json);
    case 'staff':
      return StaffUserInfo.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'UserInfo', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$UserInfo {
  User get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)
        end,
    required TResult Function(StaffUser user) staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult? Function(StaffUser user)? staff,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult Function(StaffUser user)? staff,
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
}

/// @nodoc
abstract class $UserInfoCopyWith<$Res> {
  factory $UserInfoCopyWith(UserInfo value, $Res Function(UserInfo) then) =
      _$UserInfoCopyWithImpl<$Res, UserInfo>;
}

/// @nodoc
class _$UserInfoCopyWithImpl<$Res, $Val extends UserInfo>
    implements $UserInfoCopyWith<$Res> {
  _$UserInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EndUserInfoCopyWith<$Res> {
  factory _$$EndUserInfoCopyWith(
          _$EndUserInfo value, $Res Function(_$EndUserInfo) then) =
      __$$EndUserInfoCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {EndUser user,
      int friendsAmount,
      int postsAmount,
      int subscribersAmount,
      bool amIFriend,
      bool amISubscriber,
      bool didISentFriendBid,
      bool haveIFriendBidFromThisUser});
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
    Object? user = null,
    Object? friendsAmount = null,
    Object? postsAmount = null,
    Object? subscribersAmount = null,
    Object? amIFriend = null,
    Object? amISubscriber = null,
    Object? didISentFriendBid = null,
    Object? haveIFriendBidFromThisUser = null,
  }) {
    return _then(_$EndUserInfo(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as EndUser,
      friendsAmount: null == friendsAmount
          ? _value.friendsAmount
          : friendsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      postsAmount: null == postsAmount
          ? _value.postsAmount
          : postsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribersAmount: null == subscribersAmount
          ? _value.subscribersAmount
          : subscribersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      amIFriend: null == amIFriend
          ? _value.amIFriend
          : amIFriend // ignore: cast_nullable_to_non_nullable
              as bool,
      amISubscriber: null == amISubscriber
          ? _value.amISubscriber
          : amISubscriber // ignore: cast_nullable_to_non_nullable
              as bool,
      didISentFriendBid: null == didISentFriendBid
          ? _value.didISentFriendBid
          : didISentFriendBid // ignore: cast_nullable_to_non_nullable
              as bool,
      haveIFriendBidFromThisUser: null == haveIFriendBidFromThisUser
          ? _value.haveIFriendBidFromThisUser
          : haveIFriendBidFromThisUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EndUserInfo implements EndUserInfo {
  const _$EndUserInfo(
      {required this.user,
      required this.friendsAmount,
      required this.postsAmount,
      required this.subscribersAmount,
      required this.amIFriend,
      required this.amISubscriber,
      required this.didISentFriendBid,
      required this.haveIFriendBidFromThisUser,
      final String? $type})
      : $type = $type ?? 'end';

  factory _$EndUserInfo.fromJson(Map<String, dynamic> json) =>
      _$$EndUserInfoFromJson(json);

  @override
  final EndUser user;
  @override
  final int friendsAmount;
  @override
  final int postsAmount;
  @override
  final int subscribersAmount;
  @override
  final bool amIFriend;
  @override
  final bool amISubscriber;
  @override
  final bool didISentFriendBid;
  @override
  final bool haveIFriendBidFromThisUser;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UserInfo.end(user: $user, friendsAmount: $friendsAmount, postsAmount: $postsAmount, subscribersAmount: $subscribersAmount, amIFriend: $amIFriend, amISubscriber: $amISubscriber, didISentFriendBid: $didISentFriendBid, haveIFriendBidFromThisUser: $haveIFriendBidFromThisUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndUserInfo &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.friendsAmount, friendsAmount) ||
                other.friendsAmount == friendsAmount) &&
            (identical(other.postsAmount, postsAmount) ||
                other.postsAmount == postsAmount) &&
            (identical(other.subscribersAmount, subscribersAmount) ||
                other.subscribersAmount == subscribersAmount) &&
            (identical(other.amIFriend, amIFriend) ||
                other.amIFriend == amIFriend) &&
            (identical(other.amISubscriber, amISubscriber) ||
                other.amISubscriber == amISubscriber) &&
            (identical(other.didISentFriendBid, didISentFriendBid) ||
                other.didISentFriendBid == didISentFriendBid) &&
            (identical(other.haveIFriendBidFromThisUser,
                    haveIFriendBidFromThisUser) ||
                other.haveIFriendBidFromThisUser ==
                    haveIFriendBidFromThisUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      friendsAmount,
      postsAmount,
      subscribersAmount,
      amIFriend,
      amISubscriber,
      didISentFriendBid,
      haveIFriendBidFromThisUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndUserInfoCopyWith<_$EndUserInfo> get copyWith =>
      __$$EndUserInfoCopyWithImpl<_$EndUserInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)
        end,
    required TResult Function(StaffUser user) staff,
  }) {
    return end(user, friendsAmount, postsAmount, subscribersAmount, amIFriend,
        amISubscriber, didISentFriendBid, haveIFriendBidFromThisUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult? Function(StaffUser user)? staff,
  }) {
    return end?.call(
        user,
        friendsAmount,
        postsAmount,
        subscribersAmount,
        amIFriend,
        amISubscriber,
        didISentFriendBid,
        haveIFriendBidFromThisUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult Function(StaffUser user)? staff,
    required TResult orElse(),
  }) {
    if (end != null) {
      return end(user, friendsAmount, postsAmount, subscribersAmount, amIFriend,
          amISubscriber, didISentFriendBid, haveIFriendBidFromThisUser);
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
  const factory EndUserInfo(
      {required final EndUser user,
      required final int friendsAmount,
      required final int postsAmount,
      required final int subscribersAmount,
      required final bool amIFriend,
      required final bool amISubscriber,
      required final bool didISentFriendBid,
      required final bool haveIFriendBidFromThisUser}) = _$EndUserInfo;

  factory EndUserInfo.fromJson(Map<String, dynamic> json) =
      _$EndUserInfo.fromJson;

  @override
  EndUser get user;
  int get friendsAmount;
  int get postsAmount;
  int get subscribersAmount;
  bool get amIFriend;
  bool get amISubscriber;
  bool get didISentFriendBid;
  bool get haveIFriendBidFromThisUser;
  @JsonKey(ignore: true)
  _$$EndUserInfoCopyWith<_$EndUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaffUserInfoCopyWith<$Res> {
  factory _$$StaffUserInfoCopyWith(
          _$StaffUserInfo value, $Res Function(_$StaffUserInfo) then) =
      __$$StaffUserInfoCopyWithImpl<$Res>;
  @useResult
  $Res call({StaffUser user});
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
    Object? user = null,
  }) {
    return _then(_$StaffUserInfo(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as StaffUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffUserInfo implements StaffUserInfo {
  const _$StaffUserInfo({required this.user, final String? $type})
      : $type = $type ?? 'staff';

  factory _$StaffUserInfo.fromJson(Map<String, dynamic> json) =>
      _$$StaffUserInfoFromJson(json);

  @override
  final StaffUser user;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UserInfo.staff(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffUserInfo &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffUserInfoCopyWith<_$StaffUserInfo> get copyWith =>
      __$$StaffUserInfoCopyWithImpl<_$StaffUserInfo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)
        end,
    required TResult Function(StaffUser user) staff,
  }) {
    return staff(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult? Function(StaffUser user)? staff,
  }) {
    return staff?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            EndUser user,
            int friendsAmount,
            int postsAmount,
            int subscribersAmount,
            bool amIFriend,
            bool amISubscriber,
            bool didISentFriendBid,
            bool haveIFriendBidFromThisUser)?
        end,
    TResult Function(StaffUser user)? staff,
    required TResult orElse(),
  }) {
    if (staff != null) {
      return staff(user);
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
  const factory StaffUserInfo({required final StaffUser user}) =
      _$StaffUserInfo;

  factory StaffUserInfo.fromJson(Map<String, dynamic> json) =
      _$StaffUserInfo.fromJson;

  @override
  StaffUser get user;
  @JsonKey(ignore: true)
  _$$StaffUserInfoCopyWith<_$StaffUserInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
