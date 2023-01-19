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

  late final _$_commentIDAtom =
      Atom(name: '_CommentStore._commentID', context: context);

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

  late final _$_commentAtom =
      Atom(name: '_CommentStore._comment', context: context);

  CommentVM? get comment {
    _$_commentAtom.reportRead();
    return super._comment;
  }

  @override
  CommentVM? get _comment => comment;

  @override
  set _comment(CommentVM? value) {
    _$_commentAtom.reportWrite(value, super._comment, () {
      super._comment = value;
    });
  }

  late final _$_CommentStoreActionController =
      ActionController(name: '_CommentStore', context: context);

  @override
  void loadComment({required String commentID}) {
    final _$actionInfo = _$_CommentStoreActionController.startAction(
        name: '_CommentStore.loadComment');
    try {
      return super.loadComment(commentID: commentID);
    } finally {
      _$_CommentStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onLikeCommentPressed() {
    final _$actionInfo = _$_CommentStoreActionController.startAction(
        name: '_CommentStore.onLikeCommentPressed');
    try {
      return super.onLikeCommentPressed();
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
