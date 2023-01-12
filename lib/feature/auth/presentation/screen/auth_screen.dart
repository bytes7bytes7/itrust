import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../common/presentation/widget/widget.dart';
import '../../application/store/auth/auth_store.dart';

const _paddingH = 20.0;
const _paddingV = 14.0;
const _logoWidthFactor = 0.4;
const _textFieldsSeparator = 16.0;
const _aboveIconFlex = 1;
const _underAppTitleFlex = 1;
const _underTextFieldsFlex = 4;
final _getIt = GetIt.instance;

class AuthScreen extends HookWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    final viewPadding = mediaQuery.viewPadding;
    final availableHeight = size.height - viewPadding.top - viewPadding.bottom;
    final l10n = context.l10n;

    final authStore = _getIt.get<AuthStore>();

    final loginController = useTextEditingController();
    final passwordController = useTextEditingController();
    final obscureText = useValueNotifier(true);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: availableHeight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: _paddingH,
                vertical: _paddingV,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Spacer(
                    flex: _aboveIconFlex,
                  ),
                  FractionallySizedBox(
                    widthFactor: _logoWidthFactor,
                    child: Assets.image.png.logo.image(),
                  ),
                  Text(
                    l10n.app_name,
                    style: theme.textTheme.headline1,
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(
                    flex: _underAppTitleFlex,
                  ),
                  OutlinedTextField(
                    controller: loginController,
                    hintText: l10n.login_hint,
                  ),
                  const SizedBox(
                    height: _textFieldsSeparator,
                  ),
                  OutlinedTextField(
                    controller: passwordController,
                    hintText: l10n.password_hint,
                    obscureText: obscureText.value,
                    suffix: const Icon(
                      Icons.remove_red_eye,
                    ),
                    onSuffixPressed: () {},
                  ),
                  const Spacer(
                    flex: _underTextFieldsFlex,
                  ),
                  TextButton(
                    child: Text(l10n.rules_btn),
                    onPressed: () {},
                  ),
                  ElevatedButton(
                    onPressed: authStore.isLoading
                        ? null
                        : () {
                            authStore.authenticate(
                              login: loginController.text,
                              password: passwordController.text,
                            );
                          },
                    child: Text(l10n.login_btn),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
