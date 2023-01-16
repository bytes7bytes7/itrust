import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/service/rules_service.dart';

part 'rules_store.g.dart';

@injectable
class RulesStore = _RulesStore with _$RulesStore;

abstract class _RulesStore with Store {
  _RulesStore({
    required RulesService rulesService,
  }) : _rulesService = rulesService;

  final RulesService _rulesService;

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

  Future<void> _wrap(FutureOr<void> Function() callback) async {
    _isLoading = true;
    _error = '';

    await callback();

    _isLoading = false;
  }
}
