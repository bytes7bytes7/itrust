import 'package:injectable/injectable.dart';

import '../../domain/providers/keep_fresh_token_exception_provider.dart';
import '../../domain/providers/server_exception_provider.dart';

@Singleton(as: KeepFreshTokenExceptionProvider)
class ProdKeepFreshTokenExceptionProvider
    implements KeepFreshTokenExceptionProvider {
  const ProdKeepFreshTokenExceptionProvider(this._serverExceptionProvider);

  final ServerExceptionProvider _serverExceptionProvider;

  @override
  String get tokenExpired => _serverExceptionProvider.tokenExpired;
}
