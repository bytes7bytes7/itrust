// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessageVM {
  String get id => throw _privateConstructorUsedError;
  String get chatID => throw _privateConstructorUsedError;
  String get sentAt => throw _privateConstructorUsedError;
  bool get isReadByMe => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime? get willBeBurntAt => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String chatID, String sentAt,
            bool isReadByMe, String text, DateTime? willBeBurntAt)
        info,
    required TResult Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)
        user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String chatID, String sentAt, bool isReadByMe,
            String text, DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)?
        user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String chatID, String sentAt, bool isReadByMe,
            String text, DateTime? willBeBurntAt)?
        info,
    TResult Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)?
        user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessageVM value) info,
    required TResult Function(UserMessageVM value) user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessageVM value)? info,
    TResult? Function(UserMessageVM value)? user,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessageVM value)? info,
    TResult Function(UserMessageVM value)? user,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageVMCopyWith<MessageVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageVMCopyWith<$Res> {
  factory $MessageVMCopyWith(MessageVM value, $Res Function(MessageVM) then) =
      _$MessageVMCopyWithImpl<$Res, MessageVM>;
  @useResult
  $Res call(
      {String id,
      String chatID,
      String sentAt,
      bool isReadByMe,
      String text,
      DateTime? willBeBurntAt});
}

/// @nodoc
class _$MessageVMCopyWithImpl<$Res, $Val extends MessageVM>
    implements $MessageVMCopyWith<$Res> {
  _$MessageVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? sentAt = null,
    Object? isReadByMe = null,
    Object? text = null,
    Object? willBeBurntAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String,
      isReadByMe: null == isReadByMe
          ? _value.isReadByMe
          : isReadByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoMessageVMCopyWith<$Res>
    implements $MessageVMCopyWith<$Res> {
  factory _$$InfoMessageVMCopyWith(
          _$InfoMessageVM value, $Res Function(_$InfoMessageVM) then) =
      __$$InfoMessageVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String chatID,
      String sentAt,
      bool isReadByMe,
      String text,
      DateTime? willBeBurntAt});
}

/// @nodoc
class __$$InfoMessageVMCopyWithImpl<$Res>
    extends _$MessageVMCopyWithImpl<$Res, _$InfoMessageVM>
    implements _$$InfoMessageVMCopyWith<$Res> {
  __$$InfoMessageVMCopyWithImpl(
      _$InfoMessageVM _value, $Res Function(_$InfoMessageVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? sentAt = null,
    Object? isReadByMe = null,
    Object? text = null,
    Object? willBeBurntAt = freezed,
  }) {
    return _then(_$InfoMessageVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String,
      isReadByMe: null == isReadByMe
          ? _value.isReadByMe
          : isReadByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$InfoMessageVM implements InfoMessageVM {
  const _$InfoMessageVM(
      {required this.id,
      required this.chatID,
      required this.sentAt,
      required this.isReadByMe,
      required this.text,
      this.willBeBurntAt});

  @override
  final String id;
  @override
  final String chatID;
  @override
  final String sentAt;
  @override
  final bool isReadByMe;
  @override
  final String text;
  @override
  final DateTime? willBeBurntAt;

  @override
  String toString() {
    return 'MessageVM.info(id: $id, chatID: $chatID, sentAt: $sentAt, isReadByMe: $isReadByMe, text: $text, willBeBurntAt: $willBeBurntAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoMessageVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isReadByMe, isReadByMe) ||
                other.isReadByMe == isReadByMe) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.willBeBurntAt, willBeBurntAt) ||
                other.willBeBurntAt == willBeBurntAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, chatID, sentAt, isReadByMe, text, willBeBurntAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoMessageVMCopyWith<_$InfoMessageVM> get copyWith =>
      __$$InfoMessageVMCopyWithImpl<_$InfoMessageVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String chatID, String sentAt,
            bool isReadByMe, String text, DateTime? willBeBurntAt)
        info,
    required TResult Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)
        user,
  }) {
    return info(id, chatID, sentAt, isReadByMe, text, willBeBurntAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String chatID, String sentAt, bool isReadByMe,
            String text, DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)?
        user,
  }) {
    return info?.call(id, chatID, sentAt, isReadByMe, text, willBeBurntAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String chatID, String sentAt, bool isReadByMe,
            String text, DateTime? willBeBurntAt)?
        info,
    TResult Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)?
        user,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(id, chatID, sentAt, isReadByMe, text, willBeBurntAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessageVM value) info,
    required TResult Function(UserMessageVM value) user,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessageVM value)? info,
    TResult? Function(UserMessageVM value)? user,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessageVM value)? info,
    TResult Function(UserMessageVM value)? user,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class InfoMessageVM implements MessageVM {
  const factory InfoMessageVM(
      {required final String id,
      required final String chatID,
      required final String sentAt,
      required final bool isReadByMe,
      required final String text,
      final DateTime? willBeBurntAt}) = _$InfoMessageVM;

  @override
  String get id;
  @override
  String get chatID;
  @override
  String get sentAt;
  @override
  bool get isReadByMe;
  @override
  String get text;
  @override
  DateTime? get willBeBurntAt;
  @override
  @JsonKey(ignore: true)
  _$$InfoMessageVMCopyWith<_$InfoMessageVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserMessageVMCopyWith<$Res>
    implements $MessageVMCopyWith<$Res> {
  factory _$$UserMessageVMCopyWith(
          _$UserMessageVM value, $Res Function(_$UserMessageVM) then) =
      __$$UserMessageVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String chatID,
      String senderID,
      bool isSentByMe,
      String senderName,
      String sentAt,
      bool isReadByMe,
      String text,
      List<MediaVM> media,
      DateTime? willBeBurntAt,
      String? modifiedAt});
}

/// @nodoc
class __$$UserMessageVMCopyWithImpl<$Res>
    extends _$MessageVMCopyWithImpl<$Res, _$UserMessageVM>
    implements _$$UserMessageVMCopyWith<$Res> {
  __$$UserMessageVMCopyWithImpl(
      _$UserMessageVM _value, $Res Function(_$UserMessageVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatID = null,
    Object? senderID = null,
    Object? isSentByMe = null,
    Object? senderName = null,
    Object? sentAt = null,
    Object? isReadByMe = null,
    Object? text = null,
    Object? media = null,
    Object? willBeBurntAt = freezed,
    Object? modifiedAt = freezed,
  }) {
    return _then(_$UserMessageVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatID: null == chatID
          ? _value.chatID
          : chatID // ignore: cast_nullable_to_non_nullable
              as String,
      senderID: null == senderID
          ? _value.senderID
          : senderID // ignore: cast_nullable_to_non_nullable
              as String,
      isSentByMe: null == isSentByMe
          ? _value.isSentByMe
          : isSentByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      sentAt: null == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String,
      isReadByMe: null == isReadByMe
          ? _value.isReadByMe
          : isReadByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaVM>,
      willBeBurntAt: freezed == willBeBurntAt
          ? _value.willBeBurntAt
          : willBeBurntAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserMessageVM implements UserMessageVM {
  const _$UserMessageVM(
      {required this.id,
      required this.chatID,
      required this.senderID,
      required this.isSentByMe,
      required this.senderName,
      required this.sentAt,
      required this.isReadByMe,
      required this.text,
      required final List<MediaVM> media,
      this.willBeBurntAt,
      this.modifiedAt})
      : _media = media;

  @override
  final String id;
  @override
  final String chatID;
  @override
  final String senderID;
  @override
  final bool isSentByMe;
  @override
  final String senderName;
  @override
  final String sentAt;
  @override
  final bool isReadByMe;
  @override
  final String text;
  final List<MediaVM> _media;
  @override
  List<MediaVM> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  final DateTime? willBeBurntAt;
  @override
  final String? modifiedAt;

  @override
  String toString() {
    return 'MessageVM.user(id: $id, chatID: $chatID, senderID: $senderID, isSentByMe: $isSentByMe, senderName: $senderName, sentAt: $sentAt, isReadByMe: $isReadByMe, text: $text, media: $media, willBeBurntAt: $willBeBurntAt, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMessageVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatID, chatID) || other.chatID == chatID) &&
            (identical(other.senderID, senderID) ||
                other.senderID == senderID) &&
            (identical(other.isSentByMe, isSentByMe) ||
                other.isSentByMe == isSentByMe) &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.isReadByMe, isReadByMe) ||
                other.isReadByMe == isReadByMe) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.willBeBurntAt, willBeBurntAt) ||
                other.willBeBurntAt == willBeBurntAt) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      chatID,
      senderID,
      isSentByMe,
      senderName,
      sentAt,
      isReadByMe,
      text,
      const DeepCollectionEquality().hash(_media),
      willBeBurntAt,
      modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMessageVMCopyWith<_$UserMessageVM> get copyWith =>
      __$$UserMessageVMCopyWithImpl<_$UserMessageVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String chatID, String sentAt,
            bool isReadByMe, String text, DateTime? willBeBurntAt)
        info,
    required TResult Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)
        user,
  }) {
    return user(id, chatID, senderID, isSentByMe, senderName, sentAt,
        isReadByMe, text, media, willBeBurntAt, modifiedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String chatID, String sentAt, bool isReadByMe,
            String text, DateTime? willBeBurntAt)?
        info,
    TResult? Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)?
        user,
  }) {
    return user?.call(id, chatID, senderID, isSentByMe, senderName, sentAt,
        isReadByMe, text, media, willBeBurntAt, modifiedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String chatID, String sentAt, bool isReadByMe,
            String text, DateTime? willBeBurntAt)?
        info,
    TResult Function(
            String id,
            String chatID,
            String senderID,
            bool isSentByMe,
            String senderName,
            String sentAt,
            bool isReadByMe,
            String text,
            List<MediaVM> media,
            DateTime? willBeBurntAt,
            String? modifiedAt)?
        user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(id, chatID, senderID, isSentByMe, senderName, sentAt,
          isReadByMe, text, media, willBeBurntAt, modifiedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoMessageVM value) info,
    required TResult Function(UserMessageVM value) user,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoMessageVM value)? info,
    TResult? Function(UserMessageVM value)? user,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoMessageVM value)? info,
    TResult Function(UserMessageVM value)? user,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class UserMessageVM implements MessageVM {
  const factory UserMessageVM(
      {required final String id,
      required final String chatID,
      required final String senderID,
      required final bool isSentByMe,
      required final String senderName,
      required final String sentAt,
      required final bool isReadByMe,
      required final String text,
      required final List<MediaVM> media,
      final DateTime? willBeBurntAt,
      final String? modifiedAt}) = _$UserMessageVM;

  @override
  String get id;
  @override
  String get chatID;
  String get senderID;
  bool get isSentByMe;
  String get senderName;
  @override
  String get sentAt;
  @override
  bool get isReadByMe;
  @override
  String get text;
  List<MediaVM> get media;
  @override
  DateTime? get willBeBurntAt;
  String? get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$UserMessageVMCopyWith<_$UserMessageVM> get copyWith =>
      throw _privateConstructorUsedError;
}
