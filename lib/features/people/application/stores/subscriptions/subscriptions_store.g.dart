// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscriptions_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SubscriptionsStore on _SubscriptionsStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_SubscriptionsStore.hasError'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_SubscriptionsStore._isLoading', context: context);

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
      Atom(name: '_SubscriptionsStore._error', context: context);

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
      Atom(name: '_SubscriptionsStore._userID', context: context);

  UserID? get userID {
    _$_userIDAtom.reportRead();
    return super._userID;
  }

  @override
  UserID? get _userID => userID;

  @override
  set _userID(UserID? value) {
    _$_userIDAtom.reportWrite(value, super._userID, () {
      super._userID = value;
    });
  }

  late final _$_subscriptionsAtom =
      Atom(name: '_SubscriptionsStore._subscriptions', context: context);

  List<EndUserVM> get subscriptions {
    _$_subscriptionsAtom.reportRead();
    return super._subscriptions;
  }

  @override
  List<EndUserVM> get _subscriptions => subscriptions;

  @override
  set _subscriptions(List<EndUserVM> value) {
    _$_subscriptionsAtom.reportWrite(value, super._subscriptions, () {
      super._subscriptions = value;
    });
  }

  late final _$_isLoadedAtom =
      Atom(name: '_SubscriptionsStore._isLoaded', context: context);

  bool get isLoaded {
    _$_isLoadedAtom.reportRead();
    return super._isLoaded;
  }

  @override
  bool get _isLoaded => isLoaded;

  @override
  set _isLoaded(bool value) {
    _$_isLoadedAtom.reportWrite(value, super._isLoaded, () {
      super._isLoaded = value;
    });
  }

  late final _$_canLoadMoreAtom =
      Atom(name: '_SubscriptionsStore._canLoadMore', context: context);

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
      Atom(name: '_SubscriptionsStore._isLoadingMore', context: context);

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

  late final _$_SubscriptionsStoreActionController =
      ActionController(name: '_SubscriptionsStore', context: context);

  @override
  void loadSubscriptions({bool refresh = false}) {
    final _$actionInfo = _$_SubscriptionsStoreActionController.startAction(
        name: '_SubscriptionsStore.loadSubscriptions');
    try {
      return super.loadSubscriptions(refresh: refresh);
    } finally {
      _$_SubscriptionsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_SubscriptionsStoreActionController.startAction(
        name: '_SubscriptionsStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_SubscriptionsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadMoreSubscriptions() {
    final _$actionInfo = _$_SubscriptionsStoreActionController.startAction(
        name: '_SubscriptionsStore.loadMoreSubscriptions');
    try {
      return super.loadMoreSubscriptions();
    } finally {
      _$_SubscriptionsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetIsLoaded() {
    final _$actionInfo = _$_SubscriptionsStoreActionController.startAction(
        name: '_SubscriptionsStore.resetIsLoaded');
    try {
      return super.resetIsLoaded();
    } finally {
      _$_SubscriptionsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hasError: ${hasError}
    ''';
  }
}
