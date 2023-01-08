import 'package:injectable/injectable.dart';

import '../../../../main/application/service/home_interaction_service.dart';
import '../router/router.dart';

@Singleton(as: HomeInteractionService)
class HomeInteractionServiceImpl implements HomeInteractionService {
  @override
  void onTabChanged(int index) {
    switch (index) {
      case 0:
        router.go(AppRoutes.feed.path);
        break;
      case 1:
        router.go(AppRoutes.chatList.path);
        break;
      case 2:
        router.go(AppRoutes.menu.path);
        break;
    }
  }
}
