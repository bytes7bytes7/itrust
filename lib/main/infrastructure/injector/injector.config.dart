// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i18;
import 'package:flutter/material.dart' as _i19;
import 'package:flutter/widgets.dart' as _i30;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i31;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/coordinator/auth_coordinator.dart'
    as _i46;
import 'package:itrust/feature/auth/application/coordinator/rules_coordinator.dart'
    as _i38;
import 'package:itrust/feature/auth/application/provider/auth_string_provider.dart'
    as _i28;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i48;
import 'package:itrust/feature/auth/application/store/rules/rules_store.dart'
    as _i40;
import 'package:itrust/feature/auth/auth.dart' as _i23;
import 'package:itrust/feature/auth/domain/service/rules_service.dart' as _i41;
import 'package:itrust/feature/auth/infrastructure/provider/auth_string_provider.dart'
    as _i29;
import 'package:itrust/feature/auth/infrastructure/service/rules_service.dart'
    as _i24;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i13;
import 'package:itrust/feature/chat/domain/service/chat_service.dart' as _i11;
import 'package:itrust/feature/chat/infrastructure/service/chat_service.dart'
    as _i12;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i8;
import 'package:itrust/feature/common/common.dart' as _i45;
import 'package:itrust/feature/common/domain/domain.dart' as _i9;
import 'package:itrust/feature/common/domain/service/auth_service.dart' as _i26;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i6;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i10;
import 'package:itrust/feature/common/infrastructure/persistence/user_repository.dart'
    as _i25;
import 'package:itrust/feature/common/infrastructure/service/auth_service.dart'
    as _i27;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i7;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i14;
import 'package:itrust/feature/feed/application/store/category/category_store.dart'
    as _i5;
import 'package:itrust/feature/feed/application/store/feed/feed_store.dart'
    as _i17;
import 'package:itrust/feature/feed/domain/service/category_service.dart'
    as _i3;
import 'package:itrust/feature/feed/domain/service/feed_service.dart' as _i15;
import 'package:itrust/feature/feed/infrastructure/service/category_service.dart'
    as _i4;
import 'package:itrust/feature/feed/infrastructure/service/feed_service.dart'
    as _i16;
import 'package:itrust/feature/lock/application/store/lock/lock_store.dart'
    as _i22;
import 'package:itrust/feature/lock/domain/service/lock_service.dart' as _i20;
import 'package:itrust/feature/lock/infrastructure/service/lock_service.dart'
    as _i21;
import 'package:itrust/feature/menu/application/coordinator/menu_coordinator.dart'
    as _i35;
import 'package:itrust/feature/menu/application/store/menu/menu_store.dart'
    as _i37;
import 'package:itrust/feature/settings/application/coordinator/settings_coordinator.dart'
    as _i42;
import 'package:itrust/feature/settings/application/store/settings/settings_store.dart'
    as _i44;
import 'package:itrust/main/application/coordinator/home_coordinator.dart'
    as _i32;
import 'package:itrust/main/application/store/home/home_store.dart' as _i34;
import 'package:itrust/main/infrastructure/coordinator/auth_coordinator.dart'
    as _i47;
import 'package:itrust/main/infrastructure/coordinator/home_coordinator.dart'
    as _i33;
import 'package:itrust/main/infrastructure/coordinator/menu_coordinator.dart'
    as _i36;
import 'package:itrust/main/infrastructure/coordinator/rules_coordinator.dart'
    as _i39;
import 'package:itrust/main/infrastructure/coordinator/settings_coordinator.dart'
    as _i43;

import '../router/router.dart' as _i49;
import '../third_party/firebase_module.dart' as _i50;

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
  gh.singleton<_i3.CategoryService>(
    _i4.TestCategoryService(),
    registerFor: {_test},
  );
  gh.factory<_i5.CategoryStore>(
      () => _i5.CategoryStore(categoryService: gh<_i3.CategoryService>()));
  gh.lazySingleton<_i6.ChatListService>(
    () => _i7.TestChatListService()..init(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i8.ChatListStore>(
      () => _i8.ChatListStore(chatListService: gh<_i9.ChatListService>()));
  gh.lazySingleton<_i9.ChatRepository>(
    () => _i10.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i11.ChatService>(
    _i12.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i13.ChatStore>(
      () => _i13.ChatStore(chatService: gh<_i11.ChatService>()));
  gh.factory<_i14.ConnectionStore>(() => _i14.ConnectionStore());
  gh.singleton<_i15.FeedService>(
    _i16.TestFeedService(),
    registerFor: {_test},
  );
  gh.factory<_i17.FeedStore>(() => _i17.FeedStore(
        feedService: gh<_i15.FeedService>(),
        categoryStore: gh<_i5.CategoryStore>(),
      ));
  gh.singleton<_i18.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i19.GlobalKey<_i19.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i20.LockService>(
    _i21.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i22.LockStore>(
      () => _i22.LockStore(lockService: gh<_i20.LockService>()));
  gh.singleton<_i23.RulesService>(
    _i24.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i9.UserRepository>(
      _i25.ProdUserRepository(firebaseAuth: gh<_i18.FirebaseAuth>()));
  await gh.singletonAsync<_i26.AuthService>(
    () {
      final i = _i27.ProdAuthService(firebaseAuth: gh<_i18.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i28.AuthStringProvider>(_i29.ProdAuthStringProvider(
      navigatorKey: gh<_i30.GlobalKey<_i30.NavigatorState>>()));
  gh.singleton<_i31.GoRouter>(routerModule.router(
    gh<_i19.GlobalKey<_i19.NavigatorState>>(),
    gh<_i26.AuthService>(),
  ));
  gh.singleton<_i32.HomeCoordinator>(
    _i33.ProdHomeCoordinator(goRouter: gh<_i31.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i34.HomeStore>(
      () => _i34.HomeStore(homeCoordinator: gh<_i32.HomeCoordinator>()));
  gh.singleton<_i35.MenuCoordinator>(
      _i36.ProdMenuCoordinator(goRouter: gh<_i31.GoRouter>()));
  gh.factory<_i37.MenuStore>(
      () => _i37.MenuStore(menuCoordinator: gh<_i35.MenuCoordinator>()));
  gh.singleton<_i38.RulesCoordinator>(
      _i39.ProdRulesCoordinator(goRouter: gh<_i31.GoRouter>()));
  gh.factory<_i40.RulesStore>(() => _i40.RulesStore(
        rulesService: gh<_i41.RulesService>(),
        rulesCoordinator: gh<_i38.RulesCoordinator>(),
      ));
  gh.singleton<_i42.SettingsCoordinator>(
      _i43.ProdSettingsCoordinator(goRouter: gh<_i31.GoRouter>()));
  gh.factory<_i44.SettingsStore>(() => _i44.SettingsStore(
        authService: gh<_i45.AuthService>(),
        settingsCoordinator: gh<_i42.SettingsCoordinator>(),
      ));
  gh.singleton<_i46.AuthCoordinator>(
    _i47.ProdAuthCoordinator(
      goRouter: gh<_i31.GoRouter>(),
      authService: gh<_i45.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i48.AuthStore>(() => _i48.AuthStore(
        authService: gh<_i26.AuthService>(),
        authCoordinator: gh<_i46.AuthCoordinator>(),
        authStringProvider: gh<_i28.AuthStringProvider>(),
      ));
  return getIt;
}

class _$RouterModule extends _i49.RouterModule {}

class _$FirebaseModule extends _i50.FirebaseModule {}
