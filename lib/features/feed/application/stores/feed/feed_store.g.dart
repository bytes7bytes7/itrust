// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FeedStore on _FeedStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_FeedStore.hasError'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_FeedStore._isLoading', context: context);

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

  late final _$_errorAtom = Atom(name: '_FeedStore._error', context: context);

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

  late final _$_selectedCategoryAtom =
      Atom(name: '_FeedStore._selectedCategory', context: context);

  String? get selectedCategory {
    _$_selectedCategoryAtom.reportRead();
    return super._selectedCategory;
  }

  @override
  String? get _selectedCategory => selectedCategory;

  @override
  set _selectedCategory(String? value) {
    _$_selectedCategoryAtom.reportWrite(value, super._selectedCategory, () {
      super._selectedCategory = value;
    });
  }

  late final _$_postsAtom = Atom(name: '_FeedStore._posts', context: context);

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
      Atom(name: '_FeedStore._canLoadMore', context: context);

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
      Atom(name: '_FeedStore._isLoadingMore', context: context);

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

  late final _$loadPostsAsyncAction =
      AsyncAction('_FeedStore.loadPosts', context: context);

  @override
  Future<void> loadPosts(String? category, {bool refresh = false}) {
    return _$loadPostsAsyncAction
        .run(() => super.loadPosts(category, refresh: refresh));
  }

  late final _$loadMorePostsAsyncAction =
      AsyncAction('_FeedStore.loadMorePosts', context: context);

  @override
  Future<void> loadMorePosts() {
    return _$loadMorePostsAsyncAction.run(() => super.loadMorePosts());
  }

  late final _$onLikeButtonPressedAsyncAction =
      AsyncAction('_FeedStore.onLikeButtonPressed', context: context);

  @override
  Future<void> onLikeButtonPressed({required String postID}) {
    return _$onLikeButtonPressedAsyncAction
        .run(() => super.onLikeButtonPressed(postID: postID));
  }

  late final _$_FeedStoreActionController =
      ActionController(name: '_FeedStore', context: context);

  @override
  void selectCategory(String? category) {
    final _$actionInfo = _$_FeedStoreActionController.startAction(
        name: '_FeedStore.selectCategory');
    try {
      return super.selectCategory(category);
    } finally {
      _$_FeedStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo =
        _$_FeedStoreActionController.startAction(name: '_FeedStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_FeedStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError}
    ''';
  }
}
