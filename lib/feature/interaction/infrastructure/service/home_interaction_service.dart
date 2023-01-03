import 'package:injectable/injectable.dart';

import '../../application/service/home_interaction_service.dart';
import '../router/router.dart';

@Singleton(as: HomeInteractionService)
class HomeInteractionServiceImpl implements HomeInteractionService {
  @override
  void onTabChanged(int index) {
    switch (index) {
      case 0:
        router.go('/feed');
        break;
      case 1:
        router.go('/chat');
        break;
      case 2:
        router.go('/menu');
        break;
    }
  }
}
