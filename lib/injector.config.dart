// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/chat_list/domain/domain.dart' as _i4;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i5;
import 'package:itrust/feature/common/application/persistence/search_repository.dart'
    as _i3;

const String _dev = 'dev';
const String _test = 'test';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.SearchRepository<_i4.Chat>>(
    _i5.DevChatListSearchRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i3.SearchRepository<_i4.Chat>>(
    _i5.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  return getIt;
}
