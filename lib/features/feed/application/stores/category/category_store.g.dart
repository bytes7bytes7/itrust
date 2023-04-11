// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CategoryStore on _CategoryStore, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError => (_$hasErrorComputed ??=
          Computed<bool>(() => super.hasError, name: '_CategoryStore.hasError'))
      .value;
  Computed<bool>? _$isAllLoadedComputed;

  @override
  bool get isAllLoaded =>
      (_$isAllLoadedComputed ??= Computed<bool>(() => super.isAllLoaded,
              name: '_CategoryStore.isAllLoaded'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_CategoryStore._isLoading', context: context);

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
      Atom(name: '_CategoryStore._error', context: context);

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

  late final _$_categoriesAtom =
      Atom(name: '_CategoryStore._categories', context: context);

  List<String> get categories {
    _$_categoriesAtom.reportRead();
    return super._categories;
  }

  @override
  List<String> get _categories => categories;

  @override
  set _categories(List<String> value) {
    _$_categoriesAtom.reportWrite(value, super._categories, () {
      super._categories = value;
    });
  }

  late final _$_selectedCategoryAtom =
      Atom(name: '_CategoryStore._selectedCategory', context: context);

  String get selectedCategory {
    _$_selectedCategoryAtom.reportRead();
    return super._selectedCategory;
  }

  @override
  String get _selectedCategory => selectedCategory;

  @override
  set _selectedCategory(String value) {
    _$_selectedCategoryAtom.reportWrite(value, super._selectedCategory, () {
      super._selectedCategory = value;
    });
  }

  late final _$_CategoryStoreActionController =
      ActionController(name: '_CategoryStore', context: context);

  @override
  void loadCategories() {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
        name: '_CategoryStore.loadCategories');
    try {
      return super.loadCategories();
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectCategory(String category) {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
        name: '_CategoryStore.selectCategory');
    try {
      return super.selectCategory(category);
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refresh() {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
        name: '_CategoryStore.refresh');
    try {
      return super.refresh();
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void retry() {
    final _$actionInfo = _$_CategoryStoreActionController.startAction(
        name: '_CategoryStore.retry');
    try {
      return super.retry();
    } finally {
      _$_CategoryStoreActionController.endAction(_$actionInfo);
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
