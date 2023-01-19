import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: PostCoordinator)
class ProdPostCoordinator extends Coordinator implements PostCoordinator {
  const ProdPostCoordinator({required super.goRouter});

  @override
  void onBackButtonPressed() {
    if (goRouter.canPop()) {
      goRouter.pop();
    } else {
      const FeedRoute().go(goRouter);
    }
  }
}
