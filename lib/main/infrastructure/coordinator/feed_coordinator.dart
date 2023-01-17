import 'package:injectable/injectable.dart';

import '../../../feature/feature.dart';
import '../infrastructure.dart';
import 'coordinator.dart';

@Singleton(as: FeedCoordinator)
class ProdFeedCoordinator extends Coordinator implements FeedCoordinator {
  ProdFeedCoordinator({required super.goRouter});

  @override
  void onPostPressed() {
    goRouter.pushNamed(const PostRoute().route.name!);
  }
}
