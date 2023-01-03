// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i12;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i9;
import 'package:itrust/feature/chat_list/application/service/chat_list_interaction_service.dart'
    as _i3;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i11;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i10;
import 'package:itrust/feature/common/application/persistence/date_time_facade.dart'
    as _i13;
import 'package:itrust/feature/common/application/persistence/date_time_repository.dart'
    as _i5;
import 'package:itrust/feature/common/application/persistence/search_repository.dart'
    as _i7;
import 'package:itrust/feature/common/domain/domain.dart' as _i8;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_facade.dart'
    as _i14;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_repository.dart'
    as _i6;
import 'package:itrust/feature/interaction/infrastructure/service/chat_list_interaction_service.dart'
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
  gh.singleton<_i3.ChatListInteractionService>(
      _i4.ChatListInteractionServiceImpl());
  gh.singleton<_i5.DateTimeRepository>(
    _i6.ProdDateTimeRepository(),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  gh.singleton<_i7.SearchRepository<_i8.Message>>(
    _i9.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i7.SearchRepository<_i8.Chat>>(
    _i10.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i11.ChatListStore>(_i11.ChatListStore(
    searchRepository: gh<_i7.SearchRepository<_i8.Chat>>(),
    isSelectedAlgorithm: gh<_i11.IsSelectedAlgorithm>(),
    limit: gh<int>(),
  ));
  gh.singleton<_i12.ChatStore>(_i12.ChatStore(
    searchRepository: gh<_i7.SearchRepository<_i8.Message>>(),
    isSelectedAlgorithm: gh<_i12.IsSelectedAlgorithm>(),
    limit: gh<int>(),
  ));
  gh.singleton<_i13.DateTimeFacade>(
    _i14.ProdDateTimeFacade(gh<_i5.DateTimeRepository>()),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  return getIt;
}
