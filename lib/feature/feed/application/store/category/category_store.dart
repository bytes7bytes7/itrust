import 'dart:async';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/category_service.dart';

part 'category_store.g.dart';

@injectable
class CategoryStore = _CategoryStore with _$CategoryStore;

abstract class _CategoryStore with Store {
  _CategoryStore({
    required CategoryService categoryService,
  }) : _categoryService = categoryService;

  final CategoryService _categoryService;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  List<String> _categories = const [];

  @readonly
  Observable<String> _selectedCategory = ''.obs();

  @action
  void loadCategories() {
    _wrap(() async {
      _categories = await _categoryService.loadCategories();

      final firstCategory = _categories.firstOrNull;
      if (firstCategory != null) {
        selectCategory(firstCategory);
      }
    });
  }

  @action
  void selectCategory(String category) {
    if (_selectedCategory.value != category) {
      _selectedCategory.value = category;
    }
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = '';

    await callback();

    _isLoading = false;
  }
}
