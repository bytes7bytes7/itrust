// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i17;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i14;
import 'package:itrust/feature/chat_list/application/service/chat_list_interaction_service.dart'
    as _i3;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i16;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i15;
import 'package:itrust/feature/common/application/persistence/chat_repository.dart'
    as _i5;
import 'package:itrust/feature/common/application/persistence/date_time_facade.dart'
    as _i18;
import 'package:itrust/feature/common/application/persistence/date_time_repository.dart'
    as _i7;
import 'package:itrust/feature/common/application/persistence/search_repository.dart'
    as _i12;
import 'package:itrust/feature/common/domain/domain.dart' as _i13;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i6;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_facade.dart'
    as _i19;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_repository.dart'
    as _i8;
import 'package:itrust/feature/interaction/application/service/home_interaction_service.dart'
    as _i9;
import 'package:itrust/feature/interaction/application/store/home_store/home_store.dart'
    as _i11;
import 'package:itrust/feature/interaction/infrastructure/service/chat_list_interaction_service.dart'
    as _i4;
import 'package:itrust/feature/interaction/infrastructure/service/home_interaction_service.dart'
    as _i10;

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
  gh.singleton<_i5.ChatRepository>(
    _i6.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i7.DateTimeRepository>(
    _i8.ProdDateTimeRepository(),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  gh.singleton<_i9.HomeInteractionService>(_i10.HomeInteractionServiceImpl());
  gh.singleton<_i11.HomeStore>(
      _i11.HomeStore(homeInteractionService: gh<_i9.HomeInteractionService>()));
  gh.singleton<_i12.SearchRepository<_i13.Message>>(
    _i14.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i12.SearchRepository<_i13.Chat>>(
    _i15.TestChatListSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i16.ChatListStore>(_i16.ChatListStore(
      searchRepository: gh<_i12.SearchRepository<_i13.Chat>>()));
  gh.singleton<_i17.ChatStore>(_i17.ChatStore(
    chatRepository: gh<_i5.ChatRepository>(),
    searchRepository: gh<_i12.SearchRepository<_i13.Message>>(),
  ));
  gh.singleton<_i18.DateTimeFacade>(
    _i19.ProdDateTimeFacade(gh<_i7.DateTimeRepository>()),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  return getIt;
}
