import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../l10n/l10n.dart';
import '../../../../utils/hooks/hooks.dart';
import '../../../common/presentation/widgets/widgets.dart';
import '../../application/stores/log_in/log_in_store.dart';

const _paddingH = 20.0;
const _paddingV = 14.0;
const _logoWidthFactor = 0.4;
const _textFieldsSeparator = 16.0;
const _aboveIconFlex = 1;
const _underAppTitleFlex = 1;
const _underTextFieldsFlex = 4;
const _rulesBtnAndAuthBtnSeparator = 10.0;

final _getIt = GetIt.instance;

class LogInScreen extends HookWidget {
  const LogInScreen({super.key});

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

    final logInStore = useMemoized(() => _getIt.get<LogInStore>());

    useReaction<String>(
      (_) => logInStore.error,
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
            logInStore: logInStore,
            l10n: l10n,
          ),
          const SizedBox(
            height: _textFieldsSeparator,
          ),
          _PasswordField(
            logInStore: logInStore,
            l10n: l10n,
          ),
          const Spacer(
            flex: _underTextFieldsFlex,
          ),
          _RulesButton(
            logInStore: logInStore,
            l10n: l10n,
          ),
          const SizedBox(
            height: _rulesBtnAndAuthBtnSeparator,
          ),
          _LogInButton(
            logInStore: logInStore,
            l10n: l10n,
          ),
        ],
      ),
    );
  }
}

class _LoginField extends StatelessWidget {
  const _LoginField({
    required this.logInStore,
    required this.l10n,
  });

  final LogInStore logInStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return OutlinedTextField(
          onChanged: (value) {
            logInStore.email = value;
          },
          hintText: l10n.login_hint,
          enabled: !logInStore.isLoading,
        );
      },
    );
  }
}

class _PasswordField extends HookWidget {
  const _PasswordField({
    required this.logInStore,
    required this.l10n,
  });

  final LogInStore logInStore;
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
              onChanged: (value) {
                logInStore.password = value;
              },
              hintText: l10n.password_hint,
              obscureText: obscureText.value,
              enabled: !logInStore.isLoading,
              suffixIconPath: Assets.image.svg.removeRedEye.path,
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

class _RulesButton extends StatelessWidget {
  const _RulesButton({
    required this.logInStore,
    required this.l10n,
  });

  final LogInStore logInStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return TextButton(
          onPressed:
              logInStore.isLoading ? null : logInStore.onRulesButtonPressed,
          child: Text(l10n.rules_btn),
        );
      },
    );
  }
}

class _LogInButton extends StatelessWidget {
  const _LogInButton({
    required this.logInStore,
    required this.l10n,
  });

  final LogInStore logInStore;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: logInStore.canLogIn ? logInStore.logIn : null,
              child: Text(l10n.log_in_btn),
            ),
          ],
        );
      },
    );
  }
}
