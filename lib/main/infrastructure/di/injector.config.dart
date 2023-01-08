// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i13;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i10;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i12;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i11;
import 'package:itrust/feature/common/domain/domain.dart' as _i9;
import 'package:itrust/feature/common/domain/persistence/date_time_facade.dart'
    as _i14;
import 'package:itrust/feature/common/domain/persistence/date_time_repository.dart'
    as _i5;
import 'package:itrust/feature/common/domain/persistence/search_repository.dart'
    as _i8;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i3;
import 'package:itrust/feature/common/infrastructure/domain_service/chat_list_service.dart'
    as _i4;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_facade.dart'
    as _i15;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_repository.dart'
    as _i6;
import 'package:itrust/main/application/store/home_store/home_store.dart'
    as _i7;

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
  gh.singleton<_i3.ChatListService>(
    _i4.TestChatListService()..init(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i5.DateTimeRepository>(
    _i6.ProdDateTimeRepository(),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  gh.singleton<_i7.HomeStore>(_i7.HomeStore());
  gh.singleton<_i8.SearchRepository<_i9.Message>>(
    _i10.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i8.SearchRepository<_i9.Chat>>(
    _i11.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i12.ChatListStore>(_i12.ChatListStore(
    chatListService: gh<_i3.ChatListService>(),
    searchRepository: gh<_i8.SearchRepository<_i9.Chat>>(),
  ));
  gh.singleton<_i13.ChatStore>(_i13.ChatStore(
      searchRepository: gh<_i8.SearchRepository<_i9.Message>>()));
  gh.singleton<_i14.DateTimeFacade>(
    _i15.ProdDateTimeFacade(gh<_i5.DateTimeRepository>()),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  return getIt;
}
