import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/menu_service.dart';

part 'menu_store.g.dart';

@singleton
class MenuStore = _MenuStore with _$MenuStore;

abstract class _MenuStore with Store {
  _MenuStore({
    required MenuService menuService,
  }) : _menuService = menuService;

  final MenuService _menuService;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @action
  void onMoreBtnPressed() {
    _menuService.onMoreBtnPressed();
  }
}
