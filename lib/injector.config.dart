// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i7;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i8;
import 'package:itrust/feature/common/application/persistence/date_time_facade.dart'
    as _i9;
import 'package:itrust/feature/common/application/persistence/date_time_repository.dart'
    as _i3;
import 'package:itrust/feature/common/application/persistence/search_repository.dart'
    as _i5;
import 'package:itrust/feature/common/domain/domain.dart' as _i6;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_facade.dart'
    as _i10;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_repository.dart'
    as _i4;

const String _test = 'test';
const String _dev = 'dev';
const String _prod = 'prod';

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
  gh.singleton<_i3.DateTimeRepository>(
    _i4.ProdDateTimeRepository(),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  gh.singleton<_i5.SearchRepository<_i6.Message>>(
    _i7.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i5.SearchRepository<_i6.Chat>>(
    _i8.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i9.DateTimeFacade>(
    _i10.ProdDateTimeFacade(gh<_i3.DateTimeRepository>()),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  return getIt;
}
