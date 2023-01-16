import 'package:go_router/go_router.dart';

abstract class Coordinator {
  const Coordinator({
    required this.goRouter,
  });

  final GoRouter goRouter;
}
