part of 'router.dart';

abstract class CosyRoute {
  const CosyRoute();

  static String fromLoc(String loc) => '?from=$loc';

  GoRoute get route;

  Map<String, String> get params => const {};

  Map<String, String> get queryParams => const {};

  String namedLocation(GoRouter goRouter) => goRouter.namedLocation(
        route.name ?? '',
        params: params,
        queryParams: queryParams,
      );

  void go(GoRouter goRouter) => goRouter.goNamed(
        route.name ?? '',
        params: params,
        queryParams: queryParams,
      );

  void push(GoRouter goRouter) => goRouter.pushNamed(
        route.name ?? '',
        params: params,
        queryParams: queryParams,
      );

  bool canPop(GoRouter goRouter) => goRouter.canPop();

  void pop(GoRouter goRouter) => goRouter.pop();

  void pushReplacement(GoRouter goRouter) => goRouter.pushReplacementNamed(
        route.name ?? '',
        params: params,
        queryParams: queryParams,
      );
}
