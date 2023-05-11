import 'package:injectable/injectable.dart';

import '../providers/rules_provider.dart';

@singleton
class RulesService {
  const RulesService({
    required RulesProvider rulesProvider,
  }) : _rulesProvider = rulesProvider;

  final RulesProvider _rulesProvider;

  Future<String> loadRules() async {
    try {
      final response = await _rulesProvider.getRules();

      return await response.value.fold(
        (l) {
          // TODO: check exception title
          throw Exception();
        },
        (r) {
          return r.rules;
        },
      );
    } catch (e) {
      // TODO: no internet
      rethrow;
    }
  }
}
