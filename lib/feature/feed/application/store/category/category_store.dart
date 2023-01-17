import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/service/category_service.dart';

part 'category_store.g.dart';

@injectable
class CategoryStore = _CategoryStore with _$CategoryStore;

abstract class _CategoryStore extends SyncStore with Store {
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
    perform(
      () async {
        _categories = await _categoryService.loadCategories();

        final firstCategory = _categories.firstOrNull;
        if (firstCategory != null) {
          selectCategory(firstCategory);
        }
      },
      setIsLoading: (v) => _isLoading = v,
      setError: (v) => _error = v,
    );
  }

  @action
  void selectCategory(String category) {
    if (_selectedCategory.value != category) {
      _selectedCategory.value = category;
    }
  }
}
