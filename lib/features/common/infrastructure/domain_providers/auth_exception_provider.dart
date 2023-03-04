import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

@Singleton(as: AuthExceptionProvider)
class ProdAuthExceptionProvider implements AuthExceptionProvider {
  const ProdAuthExceptionProvider(this._serverExceptionProvider);

  final ServerExceptionProvider _serverExceptionProvider;

  @override
  String get emailIsAlreadyInUse =>
      _serverExceptionProvider.emailIsAlreadyInUse;

  @override
  String get invalidCredentials => _serverExceptionProvider.invalidCredentials;
}
