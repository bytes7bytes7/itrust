// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CommentStore on _CommentStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_CommentStore._isLoading', context: context);

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
      Atom(name: '_CommentStore._error', context: context);

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
      Atom(name: '_CommentStore._postID', context: context);

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
      Atom(name: '_CommentStore._comments', context: context);

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

  late final _$_CommentStoreActionController =
      ActionController(name: '_CommentStore', context: context);

  @override
  void loadComments(String postID) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(
        name: '_CommentStore.loadComments');
    try {
      return super.loadComments(postID);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
