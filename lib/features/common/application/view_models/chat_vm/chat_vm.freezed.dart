// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatVM {
  String get id => throw _privateConstructorUsedError;
  MessageVM? get lastMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String title, String? iconName,
            MediaVM? pic, MessageVM? lastMessage)
        monologue,
    required TResult Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)
        dialogue,
    required TResult Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String? iconName, MediaVM? pic,
            MessageVM? lastMessage)?
        monologue,
    TResult? Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)?
        dialogue,
    TResult? Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)?
        group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String? iconName, MediaVM? pic,
            MessageVM? lastMessage)?
        monologue,
    TResult Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)?
        dialogue,
    TResult Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)?
        group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChatVM value) monologue,
    required TResult Function(DialogueChatVM value) dialogue,
    required TResult Function(GroupChatVM value) group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChatVM value)? monologue,
    TResult? Function(DialogueChatVM value)? dialogue,
    TResult? Function(GroupChatVM value)? group,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChatVM value)? monologue,
    TResult Function(DialogueChatVM value)? dialogue,
    TResult Function(GroupChatVM value)? group,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatVMCopyWith<ChatVM> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatVMCopyWith<$Res> {
  factory $ChatVMCopyWith(ChatVM value, $Res Function(ChatVM) then) =
      _$ChatVMCopyWithImpl<$Res, ChatVM>;
  @useResult
  $Res call({String id, MessageVM? lastMessage});

  $MessageVMCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatVMCopyWithImpl<$Res, $Val extends ChatVM>
    implements $ChatVMCopyWith<$Res> {
  _$ChatVMCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageVM?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageVMCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $MessageVMCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MonologueChatVMCopyWith<$Res>
    implements $ChatVMCopyWith<$Res> {
  factory _$$MonologueChatVMCopyWith(
          _$MonologueChatVM value, $Res Function(_$MonologueChatVM) then) =
      __$$MonologueChatVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? iconName,
      MediaVM? pic,
      MessageVM? lastMessage});

  $MediaVMCopyWith<$Res>? get pic;
  @override
  $MessageVMCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$MonologueChatVMCopyWithImpl<$Res>
    extends _$ChatVMCopyWithImpl<$Res, _$MonologueChatVM>
    implements _$$MonologueChatVMCopyWith<$Res> {
  __$$MonologueChatVMCopyWithImpl(
      _$MonologueChatVM _value, $Res Function(_$MonologueChatVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? iconName = freezed,
    Object? pic = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_$MonologueChatVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: freezed == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as MediaVM?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageVM?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaVMCopyWith<$Res>? get pic {
    if (_value.pic == null) {
      return null;
    }

    return $MediaVMCopyWith<$Res>(_value.pic!, (value) {
      return _then(_value.copyWith(pic: value));
    });
  }
}

/// @nodoc

class _$MonologueChatVM implements MonologueChatVM {
  const _$MonologueChatVM(
      {required this.id,
      required this.title,
      this.iconName,
      this.pic,
      this.lastMessage});

  @override
  final String id;
  @override
  final String title;
  @override
  final String? iconName;
  @override
  final MediaVM? pic;
  @override
  final MessageVM? lastMessage;

  @override
  String toString() {
    return 'ChatVM.monologue(id: $id, title: $title, iconName: $iconName, pic: $pic, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonologueChatVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, iconName, pic, lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonologueChatVMCopyWith<_$MonologueChatVM> get copyWith =>
      __$$MonologueChatVMCopyWithImpl<_$MonologueChatVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String title, String? iconName,
            MediaVM? pic, MessageVM? lastMessage)
        monologue,
    required TResult Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)
        dialogue,
    required TResult Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)
        group,
  }) {
    return monologue(id, title, iconName, pic, lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String? iconName, MediaVM? pic,
            MessageVM? lastMessage)?
        monologue,
    TResult? Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)?
        dialogue,
    TResult? Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)?
        group,
  }) {
    return monologue?.call(id, title, iconName, pic, lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String? iconName, MediaVM? pic,
            MessageVM? lastMessage)?
        monologue,
    TResult Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)?
        dialogue,
    TResult Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)?
        group,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(id, title, iconName, pic, lastMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChatVM value) monologue,
    required TResult Function(DialogueChatVM value) dialogue,
    required TResult Function(GroupChatVM value) group,
  }) {
    return monologue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChatVM value)? monologue,
    TResult? Function(DialogueChatVM value)? dialogue,
    TResult? Function(GroupChatVM value)? group,
  }) {
    return monologue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChatVM value)? monologue,
    TResult Function(DialogueChatVM value)? dialogue,
    TResult Function(GroupChatVM value)? group,
    required TResult orElse(),
  }) {
    if (monologue != null) {
      return monologue(this);
    }
    return orElse();
  }
}

abstract class MonologueChatVM implements ChatVM {
  const factory MonologueChatVM(
      {required final String id,
      required final String title,
      final String? iconName,
      final MediaVM? pic,
      final MessageVM? lastMessage}) = _$MonologueChatVM;

  @override
  String get id;
  String get title;
  String? get iconName;
  MediaVM? get pic;
  @override
  MessageVM? get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$MonologueChatVMCopyWith<_$MonologueChatVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DialogueChatVMCopyWith<$Res>
    implements $ChatVMCopyWith<$Res> {
  factory _$$DialogueChatVMCopyWith(
          _$DialogueChatVM value, $Res Function(_$DialogueChatVM) then) =
      __$$DialogueChatVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String partnerID,
      String partnerName,
      String unreadAmount,
      MessageVM? lastMessage});

  @override
  $MessageVMCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$DialogueChatVMCopyWithImpl<$Res>
    extends _$ChatVMCopyWithImpl<$Res, _$DialogueChatVM>
    implements _$$DialogueChatVMCopyWith<$Res> {
  __$$DialogueChatVMCopyWithImpl(
      _$DialogueChatVM _value, $Res Function(_$DialogueChatVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? partnerID = null,
    Object? partnerName = null,
    Object? unreadAmount = null,
    Object? lastMessage = freezed,
  }) {
    return _then(_$DialogueChatVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      partnerID: null == partnerID
          ? _value.partnerID
          : partnerID // ignore: cast_nullable_to_non_nullable
              as String,
      partnerName: null == partnerName
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageVM?,
    ));
  }
}

/// @nodoc

class _$DialogueChatVM implements DialogueChatVM {
  const _$DialogueChatVM(
      {required this.id,
      required this.partnerID,
      required this.partnerName,
      required this.unreadAmount,
      this.lastMessage});

  @override
  final String id;
  @override
  final String partnerID;
  @override
  final String partnerName;
  @override
  final String unreadAmount;
  @override
  final MessageVM? lastMessage;

  @override
  String toString() {
    return 'ChatVM.dialogue(id: $id, partnerID: $partnerID, partnerName: $partnerName, unreadAmount: $unreadAmount, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DialogueChatVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partnerID, partnerID) ||
                other.partnerID == partnerID) &&
            (identical(other.partnerName, partnerName) ||
                other.partnerName == partnerName) &&
            (identical(other.unreadAmount, unreadAmount) ||
                other.unreadAmount == unreadAmount) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, partnerID, partnerName, unreadAmount, lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DialogueChatVMCopyWith<_$DialogueChatVM> get copyWith =>
      __$$DialogueChatVMCopyWithImpl<_$DialogueChatVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String title, String? iconName,
            MediaVM? pic, MessageVM? lastMessage)
        monologue,
    required TResult Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)
        dialogue,
    required TResult Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)
        group,
  }) {
    return dialogue(id, partnerID, partnerName, unreadAmount, lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String? iconName, MediaVM? pic,
            MessageVM? lastMessage)?
        monologue,
    TResult? Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)?
        dialogue,
    TResult? Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)?
        group,
  }) {
    return dialogue?.call(
        id, partnerID, partnerName, unreadAmount, lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String? iconName, MediaVM? pic,
            MessageVM? lastMessage)?
        monologue,
    TResult Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)?
        dialogue,
    TResult Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)?
        group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(id, partnerID, partnerName, unreadAmount, lastMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChatVM value) monologue,
    required TResult Function(DialogueChatVM value) dialogue,
    required TResult Function(GroupChatVM value) group,
  }) {
    return dialogue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChatVM value)? monologue,
    TResult? Function(DialogueChatVM value)? dialogue,
    TResult? Function(GroupChatVM value)? group,
  }) {
    return dialogue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChatVM value)? monologue,
    TResult Function(DialogueChatVM value)? dialogue,
    TResult Function(GroupChatVM value)? group,
    required TResult orElse(),
  }) {
    if (dialogue != null) {
      return dialogue(this);
    }
    return orElse();
  }
}

abstract class DialogueChatVM implements ChatVM {
  const factory DialogueChatVM(
      {required final String id,
      required final String partnerID,
      required final String partnerName,
      required final String unreadAmount,
      final MessageVM? lastMessage}) = _$DialogueChatVM;

  @override
  String get id;
  String get partnerID;
  String get partnerName;
  String get unreadAmount;
  @override
  MessageVM? get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$DialogueChatVMCopyWith<_$DialogueChatVM> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupChatVMCopyWith<$Res> implements $ChatVMCopyWith<$Res> {
  factory _$$GroupChatVMCopyWith(
          _$GroupChatVM value, $Res Function(_$GroupChatVM) then) =
      __$$GroupChatVMCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String ownerID,
      String participantsAmount,
      String title,
      String unreadAmount,
      MediaVM? pic,
      MessageVM? lastMessage});

  $MediaVMCopyWith<$Res>? get pic;
  @override
  $MessageVMCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$GroupChatVMCopyWithImpl<$Res>
    extends _$ChatVMCopyWithImpl<$Res, _$GroupChatVM>
    implements _$$GroupChatVMCopyWith<$Res> {
  __$$GroupChatVMCopyWithImpl(
      _$GroupChatVM _value, $Res Function(_$GroupChatVM) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ownerID = null,
    Object? participantsAmount = null,
    Object? title = null,
    Object? unreadAmount = null,
    Object? pic = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_$GroupChatVM(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as String,
      participantsAmount: null == participantsAmount
          ? _value.participantsAmount
          : participantsAmount // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      unreadAmount: null == unreadAmount
          ? _value.unreadAmount
          : unreadAmount // ignore: cast_nullable_to_non_nullable
              as String,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as MediaVM?,
      lastMessage: freezed == lastMessage
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as MessageVM?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MediaVMCopyWith<$Res>? get pic {
    if (_value.pic == null) {
      return null;
    }

    return $MediaVMCopyWith<$Res>(_value.pic!, (value) {
      return _then(_value.copyWith(pic: value));
    });
  }
}

/// @nodoc

class _$GroupChatVM implements GroupChatVM {
  const _$GroupChatVM(
      {required this.id,
      required this.ownerID,
      required this.participantsAmount,
      required this.title,
      required this.unreadAmount,
      this.pic,
      this.lastMessage});

  @override
  final String id;
  @override
  final String ownerID;
  @override
  final String participantsAmount;
  @override
  final String title;
  @override
  final String unreadAmount;
  @override
  final MediaVM? pic;
  @override
  final MessageVM? lastMessage;

  @override
  String toString() {
    return 'ChatVM.group(id: $id, ownerID: $ownerID, participantsAmount: $participantsAmount, title: $title, unreadAmount: $unreadAmount, pic: $pic, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupChatVM &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ownerID, ownerID) || other.ownerID == ownerID) &&
            (identical(other.participantsAmount, participantsAmount) ||
                other.participantsAmount == participantsAmount) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.unreadAmount, unreadAmount) ||
                other.unreadAmount == unreadAmount) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, ownerID, participantsAmount,
      title, unreadAmount, pic, lastMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupChatVMCopyWith<_$GroupChatVM> get copyWith =>
      __$$GroupChatVMCopyWithImpl<_$GroupChatVM>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String title, String? iconName,
            MediaVM? pic, MessageVM? lastMessage)
        monologue,
    required TResult Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)
        dialogue,
    required TResult Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)
        group,
  }) {
    return group(
        id, ownerID, participantsAmount, title, unreadAmount, pic, lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String title, String? iconName, MediaVM? pic,
            MessageVM? lastMessage)?
        monologue,
    TResult? Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)?
        dialogue,
    TResult? Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)?
        group,
  }) {
    return group?.call(
        id, ownerID, participantsAmount, title, unreadAmount, pic, lastMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String title, String? iconName, MediaVM? pic,
            MessageVM? lastMessage)?
        monologue,
    TResult Function(String id, String partnerID, String partnerName,
            String unreadAmount, MessageVM? lastMessage)?
        dialogue,
    TResult Function(
            String id,
            String ownerID,
            String participantsAmount,
            String title,
            String unreadAmount,
            MediaVM? pic,
            MessageVM? lastMessage)?
        group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(id, ownerID, participantsAmount, title, unreadAmount, pic,
          lastMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonologueChatVM value) monologue,
    required TResult Function(DialogueChatVM value) dialogue,
    required TResult Function(GroupChatVM value) group,
  }) {
    return group(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonologueChatVM value)? monologue,
    TResult? Function(DialogueChatVM value)? dialogue,
    TResult? Function(GroupChatVM value)? group,
  }) {
    return group?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonologueChatVM value)? monologue,
    TResult Function(DialogueChatVM value)? dialogue,
    TResult Function(GroupChatVM value)? group,
    required TResult orElse(),
  }) {
    if (group != null) {
      return group(this);
    }
    return orElse();
  }
}

abstract class GroupChatVM implements ChatVM {
  const factory GroupChatVM(
      {required final String id,
      required final String ownerID,
      required final String participantsAmount,
      required final String title,
      required final String unreadAmount,
      final MediaVM? pic,
      final MessageVM? lastMessage}) = _$GroupChatVM;

  @override
  String get id;
  String get ownerID;
  String get participantsAmount;
  String get title;
  String get unreadAmount;
  MediaVM? get pic;
  @override
  MessageVM? get lastMessage;
  @override
  @JsonKey(ignore: true)
  _$$GroupChatVMCopyWith<_$GroupChatVM> get copyWith =>
      throw _privateConstructorUsedError;
}
