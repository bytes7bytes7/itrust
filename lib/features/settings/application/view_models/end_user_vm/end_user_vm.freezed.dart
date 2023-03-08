// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'end_user_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EndUserVM {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get avatarUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EndUserVMCopyWith<EndUserVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndUserVMCopyWith<$Res> {
  factory $EndUserVMCopyWith(EndUserVM value, $Res Function(EndUserVM) then) =
      _$EndUserVMCopyWithImpl<$Res, EndUserVM>;
  @useResult
  $Res call({String id, String name, String? avatarUrl});
}

/// @nodoc
class _$EndUserVMCopyWithImpl<$Res, $Val extends EndUserVM>
    implements $EndUserVMCopyWith<$Res> {
  _$EndUserVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = freezed,
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
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EndUserVMCopyWith<$Res> implements $EndUserVMCopyWith<$Res> {
  factory _$$_EndUserVMCopyWith(
          _$_EndUserVM value, $Res Function(_$_EndUserVM) then) =
      __$$_EndUserVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String? avatarUrl});
}

/// @nodoc
class __$$_EndUserVMCopyWithImpl<$Res>
    extends _$EndUserVMCopyWithImpl<$Res, _$_EndUserVM>
    implements _$$_EndUserVMCopyWith<$Res> {
  __$$_EndUserVMCopyWithImpl(
      _$_EndUserVM _value, $Res Function(_$_EndUserVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_$_EndUserVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_EndUserVM implements _EndUserVM {
  const _$_EndUserVM({required this.id, required this.name, this.avatarUrl});

  @override
  final String id;
  @override
  final String name;
  @override
  final String? avatarUrl;

  @override
  String toString() {
    return 'EndUserVM(id: $id, name: $name, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EndUserVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EndUserVMCopyWith<_$_EndUserVM> get copyWith =>
      __$$_EndUserVMCopyWithImpl<_$_EndUserVM>(this, _$identity);
}

abstract class _EndUserVM implements EndUserVM {
  const factory _EndUserVM(
      {required final String id,
      required final String name,
      final String? avatarUrl}) = _$_EndUserVM;

  @override
  String get id;
  @override
  String get name;
  @override
  String? get avatarUrl;
  @override
  @JsonKey(ignore: true)
  _$$_EndUserVMCopyWith<_$_EndUserVM> get copyWith =>
      throw _privateConstructorUsedError;
}
