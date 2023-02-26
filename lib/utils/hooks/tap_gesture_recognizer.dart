import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Creates an automatically disposed [TapGestureRecognizer].
///
/// See also:
/// - [TapGestureRecognizer]
TapGestureRecognizer useTapGestureRecognizer() {
  return use(
    const _TapGestureRecognizerHook(),
  );
}

class _TapGestureRecognizerHook extends Hook<TapGestureRecognizer> {
  const _TapGestureRecognizerHook();

  @override
  _TapGestureRecognizerHookState createState() {
    return _TapGestureRecognizerHookState();
  }
}

class _TapGestureRecognizerHookState
    extends HookState<TapGestureRecognizer, _TapGestureRecognizerHook> {
  late final _tapGestureRecognizer = TapGestureRecognizer();

  @override
  TapGestureRecognizer build(BuildContext context) => _tapGestureRecognizer;

  @override
  void dispose() => _tapGestureRecognizer.dispose();

  @override
  String get debugLabel => 'useTapGestureRecognizer';
}
