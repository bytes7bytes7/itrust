import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/services/category_service.dart';
import '../../providers/category_string_provider.dart';

part 'category_store.g.dart';

@injectable
class CategoryStore = _CategoryStore with _$CategoryStore;

abstract class _CategoryStore extends SyncStore with Store {
  _CategoryStore({
    required CategoryService categoryService,
    required CategoryStringProvider categoryStringProvider,
  })  : _categoryService = categoryService,
        _categoryStringProvider = categoryStringProvider;

  final CategoryService _categoryService;
  final CategoryStringProvider _categoryStringProvider;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  List<String> _categories = const [];

  @readonly
  Observable<String> _selectedCategory = ''.obs();

  @computed
  bool get hasError => _error.isNotEmpty;

  @action
  void loadCategories() {
    perform(
      () async {
        try {
          _categories = await _categoryService.loadCategories();

          final firstCategory = _categories.firstOrNull;
          if (firstCategory != null) {
            selectCategory(firstCategory);
          }
        } catch (e) {
          _error = _categoryStringProvider.canNotLoadCategories;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  @action
  void selectCategory(String category) {
    if (_selectedCategory.value != category) {
      _selectedCategory.value = category;
    }
  }
}
