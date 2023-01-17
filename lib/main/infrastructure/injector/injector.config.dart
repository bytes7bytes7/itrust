// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:flutter/widgets.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i30;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/coordinator/auth_coordinator.dart'
    as _i45;
import 'package:itrust/feature/auth/application/coordinator/rules_coordinator.dart'
    as _i37;
import 'package:itrust/feature/auth/application/provider/auth_string_provider.dart'
    as _i23;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i47;
import 'package:itrust/feature/auth/application/store/rules/rules_store.dart'
    as _i39;
import 'package:itrust/feature/auth/auth.dart' as _i18;
import 'package:itrust/feature/auth/domain/service/rules_service.dart' as _i40;
import 'package:itrust/feature/auth/infrastructure/provider/auth_string_provider.dart'
    as _i24;
import 'package:itrust/feature/auth/infrastructure/service/rules_service.dart'
    as _i19;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i7;
import 'package:itrust/feature/chat/domain/service/chat_service.dart' as _i5;
import 'package:itrust/feature/chat/infrastructure/service/chat_service.dart'
    as _i6;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i29;
import 'package:itrust/feature/common/common.dart' as _i44;
import 'package:itrust/feature/common/domain/domain.dart' as _i3;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i28;
import 'package:itrust/feature/common/domain/service/auth_service.dart' as _i21;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i26;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i4;
import 'package:itrust/feature/common/infrastructure/persistence/user_repository.dart'
    as _i20;
import 'package:itrust/feature/common/infrastructure/service/auth_service.dart'
    as _i22;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i27;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i8;
import 'package:itrust/feature/feature.dart' as _i9;
import 'package:itrust/feature/feed/application/store/feed_store/feed_store.dart'
    as _i11;
import 'package:itrust/feature/feed/domain/service/feed_service.dart' as _i12;
import 'package:itrust/feature/feed/infrastructure/service/feed_service.dart'
    as _i10;
import 'package:itrust/feature/lock/application/store/lock/lock_store.dart'
    as _i17;
import 'package:itrust/feature/lock/domain/service/lock_service.dart' as _i15;
import 'package:itrust/feature/lock/infrastructure/service/lock_service.dart'
    as _i16;
import 'package:itrust/feature/menu/application/coordinator/menu_coordinator.dart'
    as _i34;
import 'package:itrust/feature/menu/application/store/menu/menu_store.dart'
    as _i36;
import 'package:itrust/feature/settings/application/coordinator/settings_coordinator.dart'
    as _i41;
import 'package:itrust/feature/settings/application/store/settings/settings_store.dart'
    as _i43;
import 'package:itrust/main/application/coordinator/home_coordinator.dart'
    as _i31;
import 'package:itrust/main/application/store/home/home_store.dart' as _i33;
import 'package:itrust/main/infrastructure/coordinator/auth_coordinator.dart'
    as _i46;
import 'package:itrust/main/infrastructure/coordinator/home_coordinator.dart'
    as _i32;
import 'package:itrust/main/infrastructure/coordinator/menu_coordinator.dart'
    as _i35;
import 'package:itrust/main/infrastructure/coordinator/rules_coordinator.dart'
    as _i38;
import 'package:itrust/main/infrastructure/coordinator/settings_coordinator.dart'
    as _i42;

import '../router/router.dart' as _i48;
import '../third_party/firebase_module.dart' as _i49;

const String _test = 'test';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
Future<_i1.GetIt> init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final firebaseModule = _$FirebaseModule();
  final routerModule = _$RouterModule();
  gh.lazySingleton<_i3.ChatRepository>(
    () => _i4.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i5.ChatService>(
    _i6.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i7.ChatStore>(
      () => _i7.ChatStore(chatService: gh<_i5.ChatService>()));
  gh.factory<_i8.ConnectionStore>(() => _i8.ConnectionStore());
  gh.singleton<_i9.FeedService>(
    _i10.TestFeedService(),
    registerFor: {_test},
  );
  gh.factory<_i11.FeedStore>(
      () => _i11.FeedStore(feedService: gh<_i12.FeedService>()));
  gh.singleton<_i13.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i14.GlobalKey<_i14.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i15.LockService>(
    _i16.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i17.LockStore>(
      () => _i17.LockStore(lockService: gh<_i15.LockService>()));
  gh.singleton<_i18.RulesService>(
    _i19.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i3.UserRepository>(
      _i20.ProdUserRepository(firebaseAuth: gh<_i13.FirebaseAuth>()));
  await gh.singletonAsync<_i21.AuthService>(
    () {
      final i = _i22.ProdAuthService(firebaseAuth: gh<_i13.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i23.AuthStringProvider>(_i24.ProdAuthStringProvider(
      navigatorKey: gh<_i25.GlobalKey<_i25.NavigatorState>>()));
  gh.lazySingleton<_i26.ChatListService>(
    () => _i27.ProdChatListService(chatRepository: gh<_i28.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i29.ChatListStore>(
      () => _i29.ChatListStore(chatListService: gh<_i3.ChatListService>()));
  gh.singleton<_i30.GoRouter>(routerModule.router(
    gh<_i14.GlobalKey<_i14.NavigatorState>>(),
    gh<_i21.AuthService>(),
  ));
  gh.singleton<_i31.HomeCoordinator>(
    _i32.ProdHomeCoordinator(goRouter: gh<_i30.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i33.HomeStore>(
      () => _i33.HomeStore(homeCoordinator: gh<_i31.HomeCoordinator>()));
  gh.singleton<_i34.MenuCoordinator>(
      _i35.ProdMenuCoordinator(goRouter: gh<_i30.GoRouter>()));
  gh.factory<_i36.MenuStore>(
      () => _i36.MenuStore(menuCoordinator: gh<_i34.MenuCoordinator>()));
  gh.singleton<_i37.RulesCoordinator>(
      _i38.ProdRulesCoordinator(goRouter: gh<_i30.GoRouter>()));
  gh.factory<_i39.RulesStore>(() => _i39.RulesStore(
        rulesService: gh<_i40.RulesService>(),
        rulesCoordinator: gh<_i37.RulesCoordinator>(),
      ));
  gh.singleton<_i41.SettingsCoordinator>(
      _i42.ProdSettingsCoordinator(goRouter: gh<_i30.GoRouter>()));
  gh.factory<_i43.SettingsStore>(() => _i43.SettingsStore(
        authService: gh<_i44.AuthService>(),
        settingsCoordinator: gh<_i41.SettingsCoordinator>(),
      ));
  gh.singleton<_i45.AuthCoordinator>(
    _i46.ProdAuthCoordinator(
      goRouter: gh<_i30.GoRouter>(),
      authService: gh<_i44.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i47.AuthStore>(() => _i47.AuthStore(
        authService: gh<_i21.AuthService>(),
        authCoordinator: gh<_i45.AuthCoordinator>(),
        authStringProvider: gh<_i23.AuthStringProvider>(),
      ));
  return getIt;
}

class _$RouterModule extends _i48.RouterModule {}

class _$FirebaseModule extends _i49.FirebaseModule {}
