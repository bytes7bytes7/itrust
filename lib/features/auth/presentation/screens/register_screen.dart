import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/hooks.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/register/register_store.dart';

const _paddingH = 20.0;
const _paddingV = 14.0;
const _logoWidthFactor = 0.4;
const _textFieldsSeparator = 16.0;
const _aboveIconFlex = 1;
const _underAppTitleFlex = 1;
const _underTextFieldsFlex = 4;
const _rulesBtnAndAuthBtnSeparator = 10.0;

final _getIt = GetIt.instance;

class RegisterScreen extends HookWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final size = mediaQuery.size;
    final viewPadding = mediaQuery.viewPadding;
    final availableHeight = size.height - viewPadding.top - viewPadding.bottom;

    final commonFocusNode = useFocusNode();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(commonFocusNode);
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: availableHeight,
              child: const _Body(),
            ),
          ),
        ),
      ),
    );
  }
}

class _Body extends HookWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;

    final registerStore = useMemoized(() => _getIt.get<RegisterStore>());

    useReaction<String>(
      (_) => registerStore.error,
      (error) {
        if (error.isNotEmpty) {
          CustomSnackBar(
            message: error,
          ).build(context);
        }
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: _paddingH,
        vertical: _paddingV,
      ),
      child: Column(
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
          _LoginField(
            registerStore: registerStore,
            l10n: l10n,
          ),
          const SizedBox(
            height: _textFieldsSeparator,
          ),
          _PasswordField(
            registerStore: registerStore,
            l10n: l10n,
          ),
          const SizedBox(
            height: _textFieldsSeparator,
          ),
          _FirstNameField(
            registerStore: registerStore,
            l10n: l10n,
          ),
          const SizedBox(
            height: _textFieldsSeparator,
          ),
          _LastNameField(
            registerStore: registerStore,
            l10n: l10n,
          ),
          const SizedBox(
            height: _textFieldsSeparator,
          ),
          _RulesButton(
            registerStore: registerStore,
            l10n: l10n,
            theme: theme,
          ),
          const Spacer(
            flex: _underTextFieldsFlex,
          ),
          _ToLogInButton(
            registerStore: registerStore,
            l10n: l10n,
          ),
          const SizedBox(
            height: _rulesBtnAndAuthBtnSeparator,
          ),
          _LogInButton(
            registerStore: registerStore,
            l10n: l10n,
          ),
        ],
      ),
    );
  }
}

class _LoginField extends StatelessWidget {
  const _LoginField({
    required this.registerStore,
    required this.l10n,
  });

  final RegisterStore registerStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return OutlinedTextField(
          onChanged: (value) {
            registerStore.email = value;
          },
          hintText: l10n.login_hint,
          enabled: !registerStore.isLoading,
        );
      },
    );
  }
}

class _PasswordField extends HookWidget {
  const _PasswordField({
    required this.registerStore,
    required this.l10n,
  });

  final RegisterStore registerStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final obscureText = useValueNotifier(true);

    return ValueListenableBuilder(
      valueListenable: obscureText,
      builder: (context, value, child) {
        return Observer(
          builder: (context) {
            return OutlinedTextField(
              hintText: l10n.password_hint,
              obscureText: value,
              enabled: !registerStore.isLoading,
              suffixIconPath: value
                  ? Assets.image.svg.removeRedEye.path
                  : Assets.image.svg.visibilityOff.path,
              onChanged: (value) {
                registerStore.password = value;
              },
              onSuffixPressed: () {
                obscureText.value = !value;
              },
            );
          },
        );
      },
    );
  }
}

class _FirstNameField extends StatelessWidget {
  const _FirstNameField({
    required this.registerStore,
    required this.l10n,
  });

  final RegisterStore registerStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return OutlinedTextField(
          onChanged: (value) {
            registerStore.firstName = value;
          },
          hintText: l10n.first_name_hint,
          enabled: !registerStore.isLoading,
        );
      },
    );
  }
}

class _LastNameField extends StatelessWidget {
  const _LastNameField({
    required this.registerStore,
    required this.l10n,
  });

  final RegisterStore registerStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return OutlinedTextField(
          onChanged: (value) {
            registerStore.lastName = value;
          },
          hintText: l10n.last_name_hint,
          enabled: !registerStore.isLoading,
        );
      },
    );
  }
}

class _RulesButton extends HookWidget {
  const _RulesButton({
    required this.registerStore,
    required this.l10n,
    required this.theme,
  });

  final RegisterStore registerStore;
  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final recognizer = useTapGestureRecognizer()
      ..onTap = registerStore.onRulesButtonPressed;

    return Observer(
      builder: (context) {
        return Row(
          children: [
            Checkbox(
              value: registerStore.agreeWithRules,
              onChanged: (selected) {
                if (registerStore.isLoading) {
                  return;
                }

                if (selected != null) {
                  registerStore.agreeWithRules = selected;
                }
              },
            ),
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: l10n.terms_checkbox_first_part,
                      style: theme.textTheme.bodyText2,
                    ),
                    TextSpan(
                      text: l10n.terms_checkbox_second_part,
                      style: theme.textTheme.bodyText2?.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                      recognizer: recognizer,
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ToLogInButton extends StatelessWidget {
  const _ToLogInButton({
    required this.registerStore,
    required this.l10n,
  });

  final RegisterStore registerStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return TextButton(
          onPressed: registerStore.isLoading
              ? null
              : registerStore.onGoToLogInButtonPressed,
          child: Text(l10n.go_to_log_in),
        );
      },
    );
  }
}

class _LogInButton extends StatelessWidget {
  const _LogInButton({
    required this.registerStore,
    required this.l10n,
  });

  final RegisterStore registerStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed:
                  registerStore.canRegister ? registerStore.register : null,
              child: Text(l10n.register_btn),
            ),
          ],
        );
      },
    );
  }
}
