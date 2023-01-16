import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/menu_service.dart';

part 'menu_store.g.dart';

@injectable
class MenuStore = _MenuStore with _$MenuStore;

abstract class _MenuStore with Store {
  _MenuStore({
    required MenuService menuService,
  }) : _menuService = menuService;

  final MenuService _menuService;

  @action
  void onMoreBtnPressed() {
    _menuService.onMoreBtnPressed();
  }
}
