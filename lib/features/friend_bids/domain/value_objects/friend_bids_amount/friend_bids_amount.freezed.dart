// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friend_bids_amount.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendBidsAmount {
  int get inboxAmount => throw _privateConstructorUsedError;
  int get outboxAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FriendBidsAmountCopyWith<FriendBidsAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendBidsAmountCopyWith<$Res> {
  factory $FriendBidsAmountCopyWith(
          FriendBidsAmount value, $Res Function(FriendBidsAmount) then) =
      _$FriendBidsAmountCopyWithImpl<$Res, FriendBidsAmount>;
  @useResult
  $Res call({int inboxAmount, int outboxAmount});
}

/// @nodoc
class _$FriendBidsAmountCopyWithImpl<$Res, $Val extends FriendBidsAmount>
    implements $FriendBidsAmountCopyWith<$Res> {
  _$FriendBidsAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inboxAmount = null,
    Object? outboxAmount = null,
  }) {
    return _then(_value.copyWith(
      inboxAmount: null == inboxAmount
          ? _value.inboxAmount
          : inboxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      outboxAmount: null == outboxAmount
          ? _value.outboxAmount
          : outboxAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FriendBidsAmountCopyWith<$Res>
    implements $FriendBidsAmountCopyWith<$Res> {
  factory _$$_FriendBidsAmountCopyWith(
          _$_FriendBidsAmount value, $Res Function(_$_FriendBidsAmount) then) =
      __$$_FriendBidsAmountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int inboxAmount, int outboxAmount});
}

/// @nodoc
class __$$_FriendBidsAmountCopyWithImpl<$Res>
    extends _$FriendBidsAmountCopyWithImpl<$Res, _$_FriendBidsAmount>
    implements _$$_FriendBidsAmountCopyWith<$Res> {
  __$$_FriendBidsAmountCopyWithImpl(
      _$_FriendBidsAmount _value, $Res Function(_$_FriendBidsAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inboxAmount = null,
    Object? outboxAmount = null,
  }) {
    return _then(_$_FriendBidsAmount(
      inboxAmount: null == inboxAmount
          ? _value.inboxAmount
          : inboxAmount // ignore: cast_nullable_to_non_nullable
              as int,
      outboxAmount: null == outboxAmount
          ? _value.outboxAmount
          : outboxAmount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FriendBidsAmount implements _FriendBidsAmount {
  const _$_FriendBidsAmount(
      {required this.inboxAmount, required this.outboxAmount});

  @override
  final int inboxAmount;
  @override
  final int outboxAmount;

  @override
  String toString() {
    return 'FriendBidsAmount(inboxAmount: $inboxAmount, outboxAmount: $outboxAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendBidsAmount &&
            (identical(other.inboxAmount, inboxAmount) ||
                other.inboxAmount == inboxAmount) &&
            (identical(other.outboxAmount, outboxAmount) ||
                other.outboxAmount == outboxAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inboxAmount, outboxAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FriendBidsAmountCopyWith<_$_FriendBidsAmount> get copyWith =>
      __$$_FriendBidsAmountCopyWithImpl<_$_FriendBidsAmount>(this, _$identity);
}

abstract class _FriendBidsAmount implements FriendBidsAmount {
  const factory _FriendBidsAmount(
      {required final int inboxAmount,
      required final int outboxAmount}) = _$_FriendBidsAmount;

  @override
  int get inboxAmount;
  @override
  int get outboxAmount;
  @override
  @JsonKey(ignore: true)
  _$$_FriendBidsAmountCopyWith<_$_FriendBidsAmount> get copyWith =>
      throw _privateConstructorUsedError;
}
