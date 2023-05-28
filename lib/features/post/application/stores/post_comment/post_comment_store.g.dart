// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostCommentStore on _PostCommentStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_PostCommentStore.hasError'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_PostCommentStore._isLoading', context: context);

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
      Atom(name: '_PostCommentStore._error', context: context);

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
      Atom(name: '_PostCommentStore._postID', context: context);

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

  late final _$_commentsAtom =
      Atom(name: '_PostCommentStore._comments', context: context);

  List<CommentVM> get comments {
    _$_commentsAtom.reportRead();
    return super._comments;
  }

  @override
  List<CommentVM> get _comments => comments;

  @override
  set _comments(List<CommentVM> value) {
    _$_commentsAtom.reportWrite(value, super._comments, () {
      super._comments = value;
    });
  }

  late final _$_canLoadMoreAtom =
      Atom(name: '_PostCommentStore._canLoadMore', context: context);

  bool get canLoadMore {
    _$_canLoadMoreAtom.reportRead();
    return super._canLoadMore;
  }

  @override
  bool get _canLoadMore => canLoadMore;

  @override
  set _canLoadMore(bool value) {
    _$_canLoadMoreAtom.reportWrite(value, super._canLoadMore, () {
      super._canLoadMore = value;
    });
  }

  late final _$_isLoadingMoreAtom =
      Atom(name: '_PostCommentStore._isLoadingMore', context: context);

  bool get isLoadingMore {
    _$_isLoadingMoreAtom.reportRead();
    return super._isLoadingMore;
  }

  @override
  bool get _isLoadingMore => isLoadingMore;

  @override
  set _isLoadingMore(bool value) {
    _$_isLoadingMoreAtom.reportWrite(value, super._isLoadingMore, () {
      super._isLoadingMore = value;
    });
  }

  late final _$loadPostCommentsAsyncAction =
      AsyncAction('_PostCommentStore.loadPostComments', context: context);

  @override
  Future<void> loadPostComments(
      {required String postID, bool refresh = false}) {
    return _$loadPostCommentsAsyncAction
        .run(() => super.loadPostComments(postID: postID, refresh: refresh));
  }

  late final _$loadMoreCommentsAsyncAction =
      AsyncAction('_PostCommentStore.loadMoreComments', context: context);

  @override
  Future<void> loadMoreComments() {
    return _$loadMoreCommentsAsyncAction.run(() => super.loadMoreComments());
  }

  late final _$onLikeCommentPressedAsyncAction =
      AsyncAction('_PostCommentStore.onLikeCommentPressed', context: context);

  @override
  Future<void> onLikeCommentPressed({required String commentID}) {
    return _$onLikeCommentPressedAsyncAction
        .run(() => super.onLikeCommentPressed(commentID: commentID));
  }

  late final _$setCommentsAsyncAction =
      AsyncAction('_PostCommentStore.setComments', context: context);

  @override
  Future<void> setComments(List<Comment> comments) {
    return _$setCommentsAsyncAction.run(() => super.setComments(comments));
  }

  late final _$_PostCommentStoreActionController =
      ActionController(name: '_PostCommentStore', context: context);

  @override
  void refresh() {
    final _$actionInfo = _$_PostCommentStoreActionController.startAction(
        name: '_PostCommentStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_PostCommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError}
    ''';
  }
}
