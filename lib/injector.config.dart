// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/chat/application/service/chat_interaction_service.dart'
    as _i3;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i19;
import 'package:itrust/feature/chat/infrastructure/persistence/message_search_repository.dart'
    as _i16;
import 'package:itrust/feature/chat_list/application/service/chat_list_interaction_service.dart'
    as _i5;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i18;
import 'package:itrust/feature/chat_list/infrastructure/persistence/chat_list_search_repository.dart'
    as _i17;
import 'package:itrust/feature/common/application/persistence/chat_repository.dart'
    as _i7;
import 'package:itrust/feature/common/application/persistence/date_time_facade.dart'
    as _i20;
import 'package:itrust/feature/common/application/persistence/date_time_repository.dart'
    as _i9;
import 'package:itrust/feature/common/application/persistence/search_repository.dart'
    as _i14;
import 'package:itrust/feature/common/domain/domain.dart' as _i15;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i8;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_facade.dart'
    as _i21;
import 'package:itrust/feature/common/infrastructure/persistence/date_time_repository.dart'
    as _i10;
import 'package:itrust/feature/interaction/application/service/home_interaction_service.dart'
    as _i11;
import 'package:itrust/feature/interaction/application/store/home_store/home_store.dart'
    as _i13;
import 'package:itrust/feature/interaction/infrastructure/service/chat_interaction_service.dart'
    as _i4;
import 'package:itrust/feature/interaction/infrastructure/service/chat_list_interaction_service.dart'
    as _i6;
import 'package:itrust/feature/interaction/infrastructure/service/home_interaction_service.dart'
    as _i12;

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
  gh.singleton<_i3.ChatInteractionService>(_i4.ChatInteractionServiceImpl());
  gh.singleton<_i5.ChatListInteractionService>(
      _i6.ChatListInteractionServiceImpl());
  gh.singleton<_i7.ChatRepository>(
    _i8.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i9.DateTimeRepository>(
    _i10.ProdDateTimeRepository(),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  gh.singleton<_i11.HomeInteractionService>(_i12.HomeInteractionServiceImpl());
  gh.singleton<_i13.HomeStore>(_i13.HomeStore(
      homeInteractionService: gh<_i11.HomeInteractionService>()));
  gh.singleton<_i14.SearchRepository<_i15.Message>>(
    _i16.TestMessageSearchRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i14.SearchRepository<_i15.Chat>>(
    _i17.TestChatListSearchRepository(chatRepository: gh<_i7.ChatRepository>()),
    registerFor: {_test},
  );
  gh.singleton<_i18.ChatListStore>(_i18.ChatListStore(
    chatListInteractionService: gh<_i5.ChatListInteractionService>(),
    searchRepository: gh<_i14.SearchRepository<_i15.Chat>>(),
  ));
  gh.singleton<_i19.ChatStore>(_i19.ChatStore(
    chatInteractionService: gh<_i3.ChatInteractionService>(),
    chatRepository: gh<_i7.ChatRepository>(),
    searchRepository: gh<_i14.SearchRepository<_i15.Message>>(),
  ));
  gh.singleton<_i20.DateTimeFacade>(
    _i21.ProdDateTimeFacade(gh<_i9.DateTimeRepository>()),
    registerFor: {
      _test,
      _dev,
      _prod,
    },
  );
  return getIt;
}
