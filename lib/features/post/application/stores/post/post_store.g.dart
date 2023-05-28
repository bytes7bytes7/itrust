// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostStore on _PostStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_PostStore.hasError'))
      .value;
  Computed<bool>? _$isAllLoadedComputed;

  @override
  bool get isAllLoaded =>
      (_$isAllLoadedComputed ??= Computed<bool>(() => super.isAllLoaded,
              name: '_PostStore.isAllLoaded'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_PostStore._isLoading', context: context);

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

  late final _$_errorAtom = Atom(name: '_PostStore._error', context: context);

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

  late final _$_postIDAtom = Atom(name: '_PostStore._postID', context: context);

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

  late final _$_postAtom = Atom(name: '_PostStore._post', context: context);

  PostVM? get post {
    _$_postAtom.reportRead();
    return super._post;
  }

  @override
  PostVM? get _post => post;

  @override
  set _post(PostVM? value) {
    _$_postAtom.reportWrite(value, super._post, () {
      super._post = value;
    });
  }

  late final _$_moveUpAtom = Atom(name: '_PostStore._moveUp', context: context);

  bool get moveUp {
    _$_moveUpAtom.reportRead();
    return super._moveUp;
  }

  @override
  bool get _moveUp => moveUp;

  @override
  set _moveUp(bool value) {
    _$_moveUpAtom.reportWrite(value, super._moveUp, () {
      super._moveUp = value;
    });
  }

  late final _$loadPostAsyncAction =
      AsyncAction('_PostStore.loadPost', context: context);

  @override
  Future<void> loadPost({required String postID, bool refresh = false}) {
    return _$loadPostAsyncAction
        .run(() => super.loadPost(postID: postID, refresh: refresh));
  }

  late final _$onLikePostPressedAsyncAction =
      AsyncAction('_PostStore.onLikePostPressed', context: context);

  @override
  Future<void> onLikePostPressed() {
    return _$onLikePostPressedAsyncAction.run(() => super.onLikePostPressed());
  }

  late final _$replyAsyncAction =
      AsyncAction('_PostStore.reply', context: context);

  @override
  Future<void> reply(String text) {
    return _$replyAsyncAction.run(() => super.reply(text));
  }

  late final _$_PostStoreActionController =
      ActionController(name: '_PostStore', context: context);

  @override
  void refresh() {
    final _$actionInfo =
        _$_PostStoreActionController.startAction(name: '_PostStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_PostStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError},
isAllLoaded: ${isAllLoaded}
    ''';
  }
}
