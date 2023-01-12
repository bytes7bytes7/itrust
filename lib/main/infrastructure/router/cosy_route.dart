part of 'router.dart';

abstract class CosyRoute {
  const CosyRoute();

  static String fromLoc(String loc) => '?from=$loc';

  GoRoute get route;

  Map<String, String> get params => const {};

  Map<String, String> get queryParams => const {};

  String namedLocation(BuildContext context) =>
      GoRouter.of(context).namedLocation(
        route.name ?? '',
        params: params,
        queryParams: queryParams,
      );

  void go(BuildContext context) => GoRouter.of(context).goNamed(
        route.name ?? '',
        params: params,
        queryParams: queryParams,
      );

  void push(BuildContext context) => GoRouter.of(context).pushNamed(
        route.name ?? '',
        params: params,
        queryParams: queryParams,
      );

  bool canPop(BuildContext context) => GoRouter.of(context).canPop();

  void pop(BuildContext context) => GoRouter.of(context).pop();

  void replaceReplacement(BuildContext context) =>
      GoRouter.of(context).pushReplacementNamed(
        route.name ?? '',
        params: params,
        queryParams: queryParams,
      );
}
