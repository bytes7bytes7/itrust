// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  CommentID get id => throw _privateConstructorUsedError;
  UserID get authorID => throw _privateConstructorUsedError;
  PostID get postID => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  bool get likedByMe => throw _privateConstructorUsedError;
  int get likesAmount => throw _privateConstructorUsedError;
  int get repliesAmount => throw _privateConstructorUsedError;
  CommentID? get replyTo => throw _privateConstructorUsedError;
  DateTime? get modifiedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {CommentID id,
      UserID authorID,
      PostID postID,
      DateTime createdAt,
      String text,
      bool likedByMe,
      int likesAmount,
      int repliesAmount,
      CommentID? replyTo,
      DateTime? modifiedAt});

  $CommentIDCopyWith<$Res> get id;
  $UserIDCopyWith<$Res> get authorID;
  $PostIDCopyWith<$Res> get postID;
  $CommentIDCopyWith<$Res>? get replyTo;
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorID = null,
    Object? postID = null,
    Object? createdAt = null,
    Object? text = null,
    Object? likedByMe = null,
    Object? likesAmount = null,
    Object? repliesAmount = null,
    Object? replyTo = freezed,
    Object? modifiedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CommentID,
      authorID: null == authorID
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as UserID,
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as PostID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      likedByMe: null == likedByMe
          ? _value.likedByMe
          : likedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      likesAmount: null == likesAmount
          ? _value.likesAmount
          : likesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      repliesAmount: null == repliesAmount
          ? _value.repliesAmount
          : repliesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as CommentID?,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentIDCopyWith<$Res> get id {
    return $CommentIDCopyWith<$Res>(_value.id, (value) {
      return _then(_value.copyWith(id: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserIDCopyWith<$Res> get authorID {
    return $UserIDCopyWith<$Res>(_value.authorID, (value) {
      return _then(_value.copyWith(authorID: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostIDCopyWith<$Res> get postID {
    return $PostIDCopyWith<$Res>(_value.postID, (value) {
      return _then(_value.copyWith(postID: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentIDCopyWith<$Res>? get replyTo {
    if (_value.replyTo == null) {
      return null;
    }

    return $CommentIDCopyWith<$Res>(_value.replyTo!, (value) {
      return _then(_value.copyWith(replyTo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommentID id,
      UserID authorID,
      PostID postID,
      DateTime createdAt,
      String text,
      bool likedByMe,
      int likesAmount,
      int repliesAmount,
      CommentID? replyTo,
      DateTime? modifiedAt});

  @override
  $CommentIDCopyWith<$Res> get id;
  @override
  $UserIDCopyWith<$Res> get authorID;
  @override
  $PostIDCopyWith<$Res> get postID;
  @override
  $CommentIDCopyWith<$Res>? get replyTo;
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorID = null,
    Object? postID = null,
    Object? createdAt = null,
    Object? text = null,
    Object? likedByMe = null,
    Object? likesAmount = null,
    Object? repliesAmount = null,
    Object? replyTo = freezed,
    Object? modifiedAt = freezed,
  }) {
    return _then(_$_Comment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as CommentID,
      authorID: null == authorID
          ? _value.authorID
          : authorID // ignore: cast_nullable_to_non_nullable
              as UserID,
      postID: null == postID
          ? _value.postID
          : postID // ignore: cast_nullable_to_non_nullable
              as PostID,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      likedByMe: null == likedByMe
          ? _value.likedByMe
          : likedByMe // ignore: cast_nullable_to_non_nullable
              as bool,
      likesAmount: null == likesAmount
          ? _value.likesAmount
          : likesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      repliesAmount: null == repliesAmount
          ? _value.repliesAmount
          : repliesAmount // ignore: cast_nullable_to_non_nullable
              as int,
      replyTo: freezed == replyTo
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as CommentID?,
      modifiedAt: freezed == modifiedAt
          ? _value.modifiedAt
          : modifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment implements _Comment {
  const _$_Comment(
      {required this.id,
      required this.authorID,
      required this.postID,
      required this.createdAt,
      required this.text,
      required this.likedByMe,
      required this.likesAmount,
      required this.repliesAmount,
      this.replyTo,
      this.modifiedAt});

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final CommentID id;
  @override
  final UserID authorID;
  @override
  final PostID postID;
  @override
  final DateTime createdAt;
  @override
  final String text;
  @override
  final bool likedByMe;
  @override
  final int likesAmount;
  @override
  final int repliesAmount;
  @override
  final CommentID? replyTo;
  @override
  final DateTime? modifiedAt;

  @override
  String toString() {
    return 'Comment(id: $id, authorID: $authorID, postID: $postID, createdAt: $createdAt, text: $text, likedByMe: $likedByMe, likesAmount: $likesAmount, repliesAmount: $repliesAmount, replyTo: $replyTo, modifiedAt: $modifiedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorID, authorID) ||
                other.authorID == authorID) &&
            (identical(other.postID, postID) || other.postID == postID) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.likedByMe, likedByMe) ||
                other.likedByMe == likedByMe) &&
            (identical(other.likesAmount, likesAmount) ||
                other.likesAmount == likesAmount) &&
            (identical(other.repliesAmount, repliesAmount) ||
                other.repliesAmount == repliesAmount) &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo) &&
            (identical(other.modifiedAt, modifiedAt) ||
                other.modifiedAt == modifiedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, authorID, postID, createdAt,
      text, likedByMe, likesAmount, repliesAmount, replyTo, modifiedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment implements Comment {
  const factory _Comment(
      {required final CommentID id,
      required final UserID authorID,
      required final PostID postID,
      required final DateTime createdAt,
      required final String text,
      required final bool likedByMe,
      required final int likesAmount,
      required final int repliesAmount,
      final CommentID? replyTo,
      final DateTime? modifiedAt}) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  CommentID get id;
  @override
  UserID get authorID;
  @override
  PostID get postID;
  @override
  DateTime get createdAt;
  @override
  String get text;
  @override
  bool get likedByMe;
  @override
  int get likesAmount;
  @override
  int get repliesAmount;
  @override
  CommentID? get replyTo;
  @override
  DateTime? get modifiedAt;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
