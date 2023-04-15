import 'package:injectable/injectable.dart';

import '../../../features/features.dart';
import '../router/router.dart';
import 'coordinator.dart';

@Singleton(as: FeedCoordinator)
class ProdFeedCoordinator extends Coordinator implements FeedCoordinator {
  ProdFeedCoordinator({required super.goRouter});

  @override
  void onPostPressed(String id) {
    PostRoute(id: id).go(goRouter);
  }

  @override
  void onCommentButtonPressed(String id) {
    PostRoute(id: id).go(goRouter);
  }
}
