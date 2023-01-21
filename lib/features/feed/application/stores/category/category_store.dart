import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/services/category_service.dart';
import '../../providers/category_string_provider.dart';
import '../feed/feed_store.dart';

part 'category_store.g.dart';

@injectable
class CategoryStore = _CategoryStore with _$CategoryStore;

abstract class _CategoryStore extends SyncStore with Store {
  _CategoryStore({
    required this.feedStore,
    required CategoryService categoryService,
    required CategoryStringProvider categoryStringProvider,
  })  : _categoryService = categoryService,
        _categoryStringProvider = categoryStringProvider;

  final FeedStore feedStore;

  final CategoryService _categoryService;
  final CategoryStringProvider _categoryStringProvider;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  List<String> _categories = const [];

  @readonly
  String _selectedCategory = '';

  @computed
  bool get hasError => _error.isNotEmpty;

  @computed
  bool get isAllLoaded =>
      !_isLoading && !hasError && !feedStore.isLoading && !feedStore.hasError;

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
    if (_selectedCategory != category) {
      _selectedCategory = category;
      feedStore.loadPosts(category);
    }
  }

  @action
  Future<void> refresh() async {
    loadCategories();
  }
}
