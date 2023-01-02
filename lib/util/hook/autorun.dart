import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobx/mobx.dart';

ReactionDisposer useAutorun<T>(
  Function(Reaction) fn, {
  String? name,
  int? delay,
  ReactiveContext? context,
  void Function(Object, Reaction)? onError,
}) {
  return use(
    _AutorunHook(
      fn,
      name: name,
      delay: delay,
      context: context,
      onError: onError,
    ),
  );
}

class _AutorunHook<T> extends Hook<ReactionDisposer> {
  const _AutorunHook(
    this.fn, {
    this.name,
    this.delay,
    this.context,
    this.onError,
  });

  final T Function(Reaction) fn;
  final String? name;
  final int? delay;
  final ReactiveContext? context;
  final void Function(Object, Reaction)? onError;

  @override
  _AutorunHookState<T> createState() => _AutorunHookState();
}

class _AutorunHookState<T> extends HookState<ReactionDisposer, _AutorunHook> {
  late final _autorunDispose = autorun(
    hook.fn,
    name: hook.name,
    delay: hook.delay,
    context: hook.context,
    onError: hook.onError,
  );

  @override
  void dispose() {
    _autorunDispose.call();
  }

  @override
  ReactionDisposer build(BuildContext context) => _autorunDispose;

  @override
  String get debugLabel => 'useAutorun<$T>';
}
