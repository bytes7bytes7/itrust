// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'media_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MediaVM {
  String get id => throw _privateConstructorUsedError;
  MediaType get type => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaVMCopyWith<MediaVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaVMCopyWith<$Res> {
  factory $MediaVMCopyWith(MediaVM value, $Res Function(MediaVM) then) =
      _$MediaVMCopyWithImpl<$Res, MediaVM>;
  @useResult
  $Res call({String id, MediaType type, String url});
}

/// @nodoc
class _$MediaVMCopyWithImpl<$Res, $Val extends MediaVM>
    implements $MediaVMCopyWith<$Res> {
  _$MediaVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediaVMCopyWith<$Res> implements $MediaVMCopyWith<$Res> {
  factory _$$_MediaVMCopyWith(
          _$_MediaVM value, $Res Function(_$_MediaVM) then) =
      __$$_MediaVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, MediaType type, String url});
}

/// @nodoc
class __$$_MediaVMCopyWithImpl<$Res>
    extends _$MediaVMCopyWithImpl<$Res, _$_MediaVM>
    implements _$$_MediaVMCopyWith<$Res> {
  __$$_MediaVMCopyWithImpl(_$_MediaVM _value, $Res Function(_$_MediaVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? url = null,
  }) {
    return _then(_$_MediaVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MediaType,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MediaVM implements _MediaVM {
  const _$_MediaVM({required this.id, required this.type, required this.url});

  @override
  final String id;
  @override
  final MediaType type;
  @override
  final String url;

  @override
  String toString() {
    return 'MediaVM(id: $id, type: $type, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, type, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediaVMCopyWith<_$_MediaVM> get copyWith =>
      __$$_MediaVMCopyWithImpl<_$_MediaVM>(this, _$identity);
}

abstract class _MediaVM implements MediaVM {
  const factory _MediaVM(
      {required final String id,
      required final MediaType type,
      required final String url}) = _$_MediaVM;

  @override
  String get id;
  @override
  MediaType get type;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_MediaVMCopyWith<_$_MediaVM> get copyWith =>
      throw _privateConstructorUsedError;
}
