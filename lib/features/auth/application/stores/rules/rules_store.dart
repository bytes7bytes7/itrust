import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../common/application/application.dart';
import '../../../domain/services/rules_service.dart';
import '../../coordinators/rules_coordinator.dart';
import '../../providers/rules_string_provider.dart';

part 'rules_store.g.dart';

@injectable
class RulesStore = _RulesStore with _$RulesStore;

abstract class _RulesStore extends SyncStore with Store {
  _RulesStore({
    required RulesService rulesService,
    required RulesCoordinator rulesCoordinator,
    required RulesStringProvider rulesStringProvider,
  })  : _rulesService = rulesService,
        _rulesCoordinator = rulesCoordinator,
        _rulesStringProvider = rulesStringProvider;

  final RulesService _rulesService;
  final RulesCoordinator _rulesCoordinator;
  final RulesStringProvider _rulesStringProvider;

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
        try {
          _rules = await _rulesService.loadRules();
        } catch (e) {
          _error = _rulesStringProvider.canNotLoadRules;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }

  void onBackButtonPressed() {
    _rulesCoordinator.onBackButtonPressed();
  }
}
