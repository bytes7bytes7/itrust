// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'people_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PeopleAmount {
  int get allUsersAmount => throw _privateConstructorUsedError;
  int get friendsAmount => throw _privateConstructorUsedError;
  int get subscribersAmount => throw _privateConstructorUsedError;
  int get subscriptionsAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeopleAmountCopyWith<PeopleAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeopleAmountCopyWith<$Res> {
  factory $PeopleAmountCopyWith(
          PeopleAmount value, $Res Function(PeopleAmount) then) =
      _$PeopleAmountCopyWithImpl<$Res, PeopleAmount>;
  @useResult
  $Res call(
      {int allUsersAmount,
      int friendsAmount,
      int subscribersAmount,
      int subscriptionsAmount});
}

/// @nodoc
class _$PeopleAmountCopyWithImpl<$Res, $Val extends PeopleAmount>
    implements $PeopleAmountCopyWith<$Res> {
  _$PeopleAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allUsersAmount = null,
    Object? friendsAmount = null,
    Object? subscribersAmount = null,
    Object? subscriptionsAmount = null,
  }) {
    return _then(_value.copyWith(
      allUsersAmount: null == allUsersAmount
          ? _value.allUsersAmount
          : allUsersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      friendsAmount: null == friendsAmount
          ? _value.friendsAmount
          : friendsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribersAmount: null == subscribersAmount
          ? _value.subscribersAmount
          : subscribersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptionsAmount: null == subscriptionsAmount
          ? _value.subscriptionsAmount
          : subscriptionsAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeopleAmountCopyWith<$Res>
    implements $PeopleAmountCopyWith<$Res> {
  factory _$$_PeopleAmountCopyWith(
          _$_PeopleAmount value, $Res Function(_$_PeopleAmount) then) =
      __$$_PeopleAmountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int allUsersAmount,
      int friendsAmount,
      int subscribersAmount,
      int subscriptionsAmount});
}

/// @nodoc
class __$$_PeopleAmountCopyWithImpl<$Res>
    extends _$PeopleAmountCopyWithImpl<$Res, _$_PeopleAmount>
    implements _$$_PeopleAmountCopyWith<$Res> {
  __$$_PeopleAmountCopyWithImpl(
      _$_PeopleAmount _value, $Res Function(_$_PeopleAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allUsersAmount = null,
    Object? friendsAmount = null,
    Object? subscribersAmount = null,
    Object? subscriptionsAmount = null,
  }) {
    return _then(_$_PeopleAmount(
      allUsersAmount: null == allUsersAmount
          ? _value.allUsersAmount
          : allUsersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      friendsAmount: null == friendsAmount
          ? _value.friendsAmount
          : friendsAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subscribersAmount: null == subscribersAmount
          ? _value.subscribersAmount
          : subscribersAmount // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptionsAmount: null == subscriptionsAmount
          ? _value.subscriptionsAmount
          : subscriptionsAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PeopleAmount implements _PeopleAmount {
  const _$_PeopleAmount(
      {required this.allUsersAmount,
      required this.friendsAmount,
      required this.subscribersAmount,
      required this.subscriptionsAmount});

  @override
  final int allUsersAmount;
  @override
  final int friendsAmount;
  @override
  final int subscribersAmount;
  @override
  final int subscriptionsAmount;

  @override
  String toString() {
    return 'PeopleAmount(allUsersAmount: $allUsersAmount, friendsAmount: $friendsAmount, subscribersAmount: $subscribersAmount, subscriptionsAmount: $subscriptionsAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeopleAmount &&
            (identical(other.allUsersAmount, allUsersAmount) ||
                other.allUsersAmount == allUsersAmount) &&
            (identical(other.friendsAmount, friendsAmount) ||
                other.friendsAmount == friendsAmount) &&
            (identical(other.subscribersAmount, subscribersAmount) ||
                other.subscribersAmount == subscribersAmount) &&
            (identical(other.subscriptionsAmount, subscriptionsAmount) ||
                other.subscriptionsAmount == subscriptionsAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, allUsersAmount, friendsAmount,
      subscribersAmount, subscriptionsAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeopleAmountCopyWith<_$_PeopleAmount> get copyWith =>
      __$$_PeopleAmountCopyWithImpl<_$_PeopleAmount>(this, _$identity);
}

abstract class _PeopleAmount implements PeopleAmount {
  const factory _PeopleAmount(
      {required final int allUsersAmount,
      required final int friendsAmount,
      required final int subscribersAmount,
      required final int subscriptionsAmount}) = _$_PeopleAmount;

  @override
  int get allUsersAmount;
  @override
  int get friendsAmount;
  @override
  int get subscribersAmount;
  @override
  int get subscriptionsAmount;
  @override
  @JsonKey(ignore: true)
  _$$_PeopleAmountCopyWith<_$_PeopleAmount> get copyWith =>
      throw _privateConstructorUsedError;
}
