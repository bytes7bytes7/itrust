import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobx/mobx.dart';

ReactionDisposer useReaction<T>(
  T Function(Reaction) fn,
  void Function(T) effect, {
  String? name,
  int? delay,
  bool? fireImmediately,
  EqualityComparer<T>? equals,
  ReactiveContext? context,
  void Function(Object, Reaction)? onError,
}) {
  return use(
    _ReactionHook<T>(
      fn,
      effect,
      name: name,
      delay: delay,
      fireImmediately: fireImmediately,
      equals: equals,
      context: context,
      onError: onError,
    ),
  );
}

class _ReactionHook<T> extends Hook<ReactionDisposer> {
  const _ReactionHook(
    this.fn,
    this.effect, {
    this.name,
    this.delay,
    this.fireImmediately,
    this.equals,
    this.context,
    this.onError,
  });

  final T Function(Reaction) fn;
  final void Function(T) effect;
  final String? name;
  final int? delay;
  final bool? fireImmediately;
  final EqualityComparer<T>? equals;
  final ReactiveContext? context;
  final void Function(Object, Reaction)? onError;

  @override
  HookState<ReactionDisposer, _ReactionHook> createState() =>
      _ReactionHookState<T>();
}

class _ReactionHookState<T>
    extends HookState<ReactionDisposer, _ReactionHook<T>> {
  late final _reactionDispose = reaction<T>(
    hook.fn,
    hook.effect,
    name: hook.name,
    delay: hook.delay,
    fireImmediately: hook.fireImmediately,
    equals: hook.equals,
    context: hook.context,
    onError: hook.onError,
  );

  @override
  void dispose() {
    _reactionDispose.call();
  }

  @override
  ReactionDisposer build(BuildContext context) => _reactionDispose;

  @override
  String get debugLabel => 'useReaction<$T>';
}
