import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../common/presentation/widget/widget.dart';

const _paddingH = 20.0;
const _paddingV = 14.0;
const _logoWidthFactor = 0.4;
const _textFieldsSeparator = 16.0;
const _aboveIconFlex = 1;
const _underAppTitleFlex = 1;
const _underTextFieldsFlex = 4;

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    final viewPadding = mediaQuery.viewPadding;
    final availableHeight = size.height - viewPadding.top - viewPadding.bottom;
    final l10n = context.l10n;

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
                    hintText: l10n.login_hint,
                  ),
                  const SizedBox(
                    height: _textFieldsSeparator,
                  ),
                  OutlinedTextField(
                    hintText: l10n.password_hint,
                    obscureText: true,
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
                    child: Text(l10n.login_btn),
                    onPressed: () {},
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
