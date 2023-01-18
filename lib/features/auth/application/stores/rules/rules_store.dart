import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/services/rules_service.dart';
import '../../coordinators/rules_coordinator.dart';

part 'rules_store.g.dart';

@injectable
class RulesStore = _RulesStore with _$RulesStore;

abstract class _RulesStore extends SyncStore with Store {
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
  String _error = '';

  @readonly
  String? _rules;

  @action
  void getRules() {
    perform(
      () async {
        _rules = await _rulesService.loadRules();
      },
      setIsLoading: (v) => _isLoading = v,
      setError: (v) => _error = v,
    );
  }

  void onBackButtonPressed() {
    _rulesCoordinator.onBackButtonPressed();
  }
}
