// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_reply_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CommentReplyStore on _CommentReplyStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_CommentReplyStore.hasError'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_CommentReplyStore._isLoading', context: context);

  bool get isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  bool get _isLoading => isLoading;

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_errorAtom =
      Atom(name: '_CommentReplyStore._error', context: context);

  String get error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  String get _error => error;

  @override
  set _error(String value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$_postIDAtom =
      Atom(name: '_CommentReplyStore._postID', context: context);

  String? get postID {
    _$_postIDAtom.reportRead();
    return super._postID;
  }

  @override
  String? get _postID => postID;

  @override
  set _postID(String? value) {
    _$_postIDAtom.reportWrite(value, super._postID, () {
      super._postID = value;
    });
  }

  late final _$_commentIDAtom =
      Atom(name: '_CommentReplyStore._commentID', context: context);

  String? get commentID {
    _$_commentIDAtom.reportRead();
    return super._commentID;
  }

  @override
  String? get _commentID => commentID;

  @override
  set _commentID(String? value) {
    _$_commentIDAtom.reportWrite(value, super._commentID, () {
      super._commentID = value;
    });
  }

  late final _$_repliesAtom =
      Atom(name: '_CommentReplyStore._replies', context: context);

  List<CommentVM> get replies {
    _$_repliesAtom.reportRead();
    return super._replies;
  }

  @override
  List<CommentVM> get _replies => replies;

  @override
  set _replies(List<CommentVM> value) {
    _$_repliesAtom.reportWrite(value, super._replies, () {
      super._replies = value;
    });
  }

  late final _$_CommentReplyStoreActionController =
      ActionController(name: '_CommentReplyStore', context: context);

  @override
  void loadCommentReplies(
      {required String postID,
      required String commentID,
      bool useCached = true}) {
    final _$actionInfo = _$_CommentReplyStoreActionController.startAction(
        name: '_CommentReplyStore.loadCommentReplies');
    try {
      return super.loadCommentReplies(
          postID: postID, commentID: commentID, useCached: useCached);
    } finally {
      _$_CommentReplyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void retry() {
    final _$actionInfo = _$_CommentReplyStoreActionController.startAction(
        name: '_CommentReplyStore.retry');
    try {
      return super.retry();
    } finally {
      _$_CommentReplyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onLikeReplyPressed({required String commentID}) {
    final _$actionInfo = _$_CommentReplyStoreActionController.startAction(
        name: '_CommentReplyStore.onLikeReplyPressed');
    try {
      return super.onLikeReplyPressed(commentID: commentID);
    } finally {
      _$_CommentReplyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setComments(List<Comment> comments) {
    final _$actionInfo = _$_CommentReplyStoreActionController.startAction(
        name: '_CommentReplyStore.setComments');
    try {
      return super.setComments(comments);
    } finally {
      _$_CommentReplyStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError}
    ''';
  }
}
