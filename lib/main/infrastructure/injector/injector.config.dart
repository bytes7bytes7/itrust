// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:flutter/widgets.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i32;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/feature/auth/application/coordinator/auth_coordinator.dart'
    as _i47;
import 'package:itrust/feature/auth/application/coordinator/rules_coordinator.dart'
    as _i39;
import 'package:itrust/feature/auth/application/provider/auth_string_provider.dart'
    as _i25;
import 'package:itrust/feature/auth/application/store/auth/auth_store.dart'
    as _i49;
import 'package:itrust/feature/auth/application/store/rules/rules_store.dart'
    as _i41;
import 'package:itrust/feature/auth/auth.dart' as _i20;
import 'package:itrust/feature/auth/domain/service/rules_service.dart' as _i42;
import 'package:itrust/feature/auth/infrastructure/provider/auth_string_provider.dart'
    as _i26;
import 'package:itrust/feature/auth/infrastructure/service/rules_service.dart'
    as _i21;
import 'package:itrust/feature/chat/application/store/chat_store/chat_store.dart'
    as _i10;
import 'package:itrust/feature/chat/domain/service/chat_service.dart' as _i8;
import 'package:itrust/feature/chat/infrastructure/service/chat_service.dart'
    as _i9;
import 'package:itrust/feature/chat_list/application/store/chat_list/chat_list_store.dart'
    as _i31;
import 'package:itrust/feature/common/common.dart' as _i46;
import 'package:itrust/feature/common/domain/domain.dart' as _i6;
import 'package:itrust/feature/common/domain/persistence/chat_repository.dart'
    as _i30;
import 'package:itrust/feature/common/domain/service/auth_service.dart' as _i23;
import 'package:itrust/feature/common/domain/service/chat_list_service.dart'
    as _i28;
import 'package:itrust/feature/common/infrastructure/persistence/chat_repository.dart'
    as _i7;
import 'package:itrust/feature/common/infrastructure/persistence/user_repository.dart'
    as _i22;
import 'package:itrust/feature/common/infrastructure/service/auth_service.dart'
    as _i24;
import 'package:itrust/feature/common/infrastructure/service/chat_list_service.dart'
    as _i29;
import 'package:itrust/feature/connection/application/store/connection/connection_store.dart'
    as _i11;
import 'package:itrust/feature/feed/application/store/category/category_store.dart'
    as _i5;
import 'package:itrust/feature/feed/application/store/feed/feed_store.dart'
    as _i14;
import 'package:itrust/feature/feed/domain/service/category_service.dart'
    as _i3;
import 'package:itrust/feature/feed/domain/service/feed_service.dart' as _i12;
import 'package:itrust/feature/feed/infrastructure/service/category_service.dart'
    as _i4;
import 'package:itrust/feature/feed/infrastructure/service/feed_service.dart'
    as _i13;
import 'package:itrust/feature/lock/application/store/lock/lock_store.dart'
    as _i19;
import 'package:itrust/feature/lock/domain/service/lock_service.dart' as _i17;
import 'package:itrust/feature/lock/infrastructure/service/lock_service.dart'
    as _i18;
import 'package:itrust/feature/menu/application/coordinator/menu_coordinator.dart'
    as _i36;
import 'package:itrust/feature/menu/application/store/menu/menu_store.dart'
    as _i38;
import 'package:itrust/feature/settings/application/coordinator/settings_coordinator.dart'
    as _i43;
import 'package:itrust/feature/settings/application/store/settings/settings_store.dart'
    as _i45;
import 'package:itrust/main/application/coordinator/home_coordinator.dart'
    as _i33;
import 'package:itrust/main/application/store/home/home_store.dart' as _i35;
import 'package:itrust/main/infrastructure/coordinator/auth_coordinator.dart'
    as _i48;
import 'package:itrust/main/infrastructure/coordinator/home_coordinator.dart'
    as _i34;
import 'package:itrust/main/infrastructure/coordinator/menu_coordinator.dart'
    as _i37;
import 'package:itrust/main/infrastructure/coordinator/rules_coordinator.dart'
    as _i40;
import 'package:itrust/main/infrastructure/coordinator/settings_coordinator.dart'
    as _i44;

import '../router/router.dart' as _i50;
import '../third_party/firebase_module.dart' as _i51;

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
  gh.lazySingleton<_i6.ChatRepository>(
    () => _i7.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i8.ChatService>(
    _i9.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i10.ChatStore>(
      () => _i10.ChatStore(chatService: gh<_i8.ChatService>()));
  gh.factory<_i11.ConnectionStore>(() => _i11.ConnectionStore());
  gh.singleton<_i12.FeedService>(
    _i13.TestFeedService(),
    registerFor: {_test},
  );
  gh.factory<_i14.FeedStore>(() => _i14.FeedStore(
        feedService: gh<_i12.FeedService>(),
        categoryStore: gh<_i5.CategoryStore>(),
      ));
  gh.singleton<_i15.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i16.GlobalKey<_i16.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i17.LockService>(
    _i18.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i19.LockStore>(
      () => _i19.LockStore(lockService: gh<_i17.LockService>()));
  gh.singleton<_i20.RulesService>(
    _i21.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i6.UserRepository>(
      _i22.ProdUserRepository(firebaseAuth: gh<_i15.FirebaseAuth>()));
  await gh.singletonAsync<_i23.AuthService>(
    () {
      final i = _i24.ProdAuthService(firebaseAuth: gh<_i15.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i25.AuthStringProvider>(_i26.ProdAuthStringProvider(
      navigatorKey: gh<_i27.GlobalKey<_i27.NavigatorState>>()));
  gh.lazySingleton<_i28.ChatListService>(
    () => _i29.ProdChatListService(chatRepository: gh<_i30.ChatRepository>())
      ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i31.ChatListStore>(
      () => _i31.ChatListStore(chatListService: gh<_i6.ChatListService>()));
  gh.singleton<_i32.GoRouter>(routerModule.router(
    gh<_i16.GlobalKey<_i16.NavigatorState>>(),
    gh<_i23.AuthService>(),
  ));
  gh.singleton<_i33.HomeCoordinator>(
    _i34.ProdHomeCoordinator(goRouter: gh<_i32.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i35.HomeStore>(
      () => _i35.HomeStore(homeCoordinator: gh<_i33.HomeCoordinator>()));
  gh.singleton<_i36.MenuCoordinator>(
      _i37.ProdMenuCoordinator(goRouter: gh<_i32.GoRouter>()));
  gh.factory<_i38.MenuStore>(
      () => _i38.MenuStore(menuCoordinator: gh<_i36.MenuCoordinator>()));
  gh.singleton<_i39.RulesCoordinator>(
      _i40.ProdRulesCoordinator(goRouter: gh<_i32.GoRouter>()));
  gh.factory<_i41.RulesStore>(() => _i41.RulesStore(
        rulesService: gh<_i42.RulesService>(),
        rulesCoordinator: gh<_i39.RulesCoordinator>(),
      ));
  gh.singleton<_i43.SettingsCoordinator>(
      _i44.ProdSettingsCoordinator(goRouter: gh<_i32.GoRouter>()));
  gh.factory<_i45.SettingsStore>(() => _i45.SettingsStore(
        authService: gh<_i46.AuthService>(),
        settingsCoordinator: gh<_i43.SettingsCoordinator>(),
      ));
  gh.singleton<_i47.AuthCoordinator>(
    _i48.ProdAuthCoordinator(
      goRouter: gh<_i32.GoRouter>(),
      authService: gh<_i46.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i49.AuthStore>(() => _i49.AuthStore(
        authService: gh<_i23.AuthService>(),
        authCoordinator: gh<_i47.AuthCoordinator>(),
        authStringProvider: gh<_i25.AuthStringProvider>(),
      ));
  return getIt;
}

class _$RouterModule extends _i50.RouterModule {}

class _$FirebaseModule extends _i51.FirebaseModule {}
