import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/rules_service.dart';
import '../../coordinator/rules_coordinator.dart';

part 'rules_store.g.dart';

@injectable
class RulesStore = _RulesStore with _$RulesStore;

abstract class _RulesStore with Store {
  _RulesStore({
    required RulesService rulesService,
    required RulesCoordinator rulesCoordinator,
  })  : _rulesService = rulesService,
        _rulesCoordinator = rulesCoordinator;

  final RulesService _rulesService;
  final RulesCoordinator _rulesCoordinator;

  @readonly
  bool _isLoading = false;

  @readonly
  Object? _error;

  @readonly
  String? _rules;

  @action
  void getRules() {
    _wrap(() async {
      _rules = await _rulesService.loadRules();
    });
  }

  void onBackButtonPressed() {
    _rulesCoordinator.onBackButtonPressed();
  }

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = '';

    await callback();

    _isLoading = false;
  }
}
