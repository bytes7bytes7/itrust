import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/feed_service.dart';

part 'feed_store.g.dart';

@injectable
class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore with Store {
  _FeedStore({
    required FeedService feedService,
  }) : _feedService = feedService;

  final FeedService _feedService;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  List<String> _categories = const [];

  @readonly
  String _selectedCategory = '';

  @action
  void loadCategories() {
    _wrap(() async {
      _categories = await _feedService.loadCategories();
    });
  }

  @action
  void selectCategory(String category) {
    if (_selectedCategory != category) {
      _selectedCategory = category;
    }
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = '';

    await callback();

    _isLoading = false;
  }
}
