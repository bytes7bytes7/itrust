// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_posts_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserPostsStore on _UserPostsStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_UserPostsStore.hasError'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_UserPostsStore._isLoading', context: context);

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
      Atom(name: '_UserPostsStore._error', context: context);

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

  late final _$_userIDAtom =
      Atom(name: '_UserPostsStore._userID', context: context);

  String? get userID {
    _$_userIDAtom.reportRead();
    return super._userID;
  }

  @override
  String? get _userID => userID;

  @override
  set _userID(String? value) {
    _$_userIDAtom.reportWrite(value, super._userID, () {
      super._userID = value;
    });
  }

  late final _$_userAtom =
      Atom(name: '_UserPostsStore._user', context: context);

  EndUser? get user {
    _$_userAtom.reportRead();
    return super._user;
  }

  @override
  EndUser? get _user => user;

  @override
  set _user(EndUser? value) {
    _$_userAtom.reportWrite(value, super._user, () {
      super._user = value;
    });
  }

  late final _$_postsAtom =
      Atom(name: '_UserPostsStore._posts', context: context);

  List<PostVM> get posts {
    _$_postsAtom.reportRead();
    return super._posts;
  }

  @override
  List<PostVM> get _posts => posts;

  @override
  set _posts(List<PostVM> value) {
    _$_postsAtom.reportWrite(value, super._posts, () {
      super._posts = value;
    });
  }

  late final _$_canLoadMoreAtom =
      Atom(name: '_UserPostsStore._canLoadMore', context: context);

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
      Atom(name: '_UserPostsStore._isLoadingMore', context: context);

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

  late final _$_UserPostsStoreActionController =
      ActionController(name: '_UserPostsStore', context: context);

  @override
  void loadPosts({bool refresh = false}) {
    final _$actionInfo = _$_UserPostsStoreActionController.startAction(
        name: '_UserPostsStore.loadPosts');
    try {
      return super.loadPosts(refresh: refresh);
    } finally {
      _$_UserPostsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_UserPostsStoreActionController.startAction(
        name: '_UserPostsStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_UserPostsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadMorePosts() {
    final _$actionInfo = _$_UserPostsStoreActionController.startAction(
        name: '_UserPostsStore.loadMorePosts');
    try {
      return super.loadMorePosts();
    } finally {
      _$_UserPostsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onLikeButtonPressed({required String postID}) {
    final _$actionInfo = _$_UserPostsStoreActionController.startAction(
        name: '_UserPostsStore.onLikeButtonPressed');
    try {
      return super.onLikeButtonPressed(postID: postID);
    } finally {
      _$_UserPostsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError}
    ''';
  }
}
