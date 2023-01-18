// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i20;
import 'package:flutter/material.dart' as _i21;
import 'package:flutter/widgets.dart' as _i33;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i36;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/auth_coordinator.dart'
    as _i57;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i50;
import 'package:itrust/features/auth/application/providers/auth_string_provider.dart'
    as _i31;
import 'package:itrust/features/auth/application/stores/auth/auth_store.dart'
    as _i56;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i48;
import 'package:itrust/features/auth/auth.dart' as _i27;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i49;
import 'package:itrust/features/auth/infrastructure/providers/auth_string_provider.dart'
    as _i32;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i28;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i12;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i10;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i11;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i8;
import 'package:itrust/features/common/application/providers/date_format_provider.dart'
    as _i34;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/common.dart' as _i53;
import 'package:itrust/features/common/domain/domain.dart' as _i6;
import 'package:itrust/features/common/infrastructure/persistence/chat_repository.dart'
    as _i9;
import 'package:itrust/features/common/infrastructure/persistence/user_repository.dart'
    as _i29;
import 'package:itrust/features/common/infrastructure/providers/date_format_provider.dart'
    as _i35;
import 'package:itrust/features/common/infrastructure/providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/infrastructure/services/auth_service.dart'
    as _i30;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i7;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i15;
import 'package:itrust/features/features.dart' as _i37;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i62;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i5;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i61;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i3;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i18;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i4;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i19;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i24;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i22;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i23;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i43;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i42;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i46;
import 'package:itrust/features/post/application/mappers/comment_mapper.dart'
    as _i58;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i59;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i45;
import 'package:itrust/features/post/domain/domain.dart' as _i13;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i25;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i14;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i26;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i54;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i52;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i38;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i40;
import 'package:itrust/main/infrastructure/coordinators/auth_coordinator.dart'
    as _i55;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i60;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i39;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i41;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i44;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i47;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i51;

import '../router/router.dart' as _i63;
import '../third_party/firebase_module.dart' as _i64;

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
      () => _i8.ChatListStore(chatListService: gh<_i6.ChatListService>()));
  gh.lazySingleton<_i6.ChatRepository>(
    () => _i9.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i10.ChatService>(
    _i11.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i12.ChatStore>(
      () => _i12.ChatStore(chatService: gh<_i10.ChatService>()));
  gh.singleton<_i13.CommentService>(
    _i14.TestCommentService(),
    registerFor: {_test},
  );
  gh.factory<_i15.ConnectionStore>(() => _i15.ConnectionStore());
  gh.singleton<_i16.DateTimeProvider>(_i17.ProdDateTimeProvider());
  gh.singleton<_i18.FeedService>(
    _i19.TestFeedService(),
    registerFor: {_test},
  );
  gh.singleton<_i20.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i21.GlobalKey<_i21.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i22.LockService>(
    _i23.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i24.LockStore>(
      () => _i24.LockStore(lockService: gh<_i22.LockService>()));
  gh.singleton<_i25.PostService>(
    _i26.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i27.RulesService>(
    _i28.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i6.UserRepository>(
      _i29.ProdUserRepository(firebaseAuth: gh<_i20.FirebaseAuth>()));
  await gh.singletonAsync<_i6.AuthService>(
    () {
      final i = _i30.ProdAuthService(firebaseAuth: gh<_i20.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i31.AuthStringProvider>(_i32.ProdAuthStringProvider(
      navigatorKey: gh<_i33.GlobalKey<_i33.NavigatorState>>()));
  gh.singleton<_i34.DateFormatProvider>(_i35.ProdDateFormatProvider(
      dateTimeProvider: gh<_i16.DateTimeProvider>()));
  gh.singleton<_i36.GoRouter>(routerModule.router(
    gh<_i21.GlobalKey<_i21.NavigatorState>>(),
    gh<_i37.AuthService>(),
  ));
  gh.singleton<_i38.HomeCoordinator>(
    _i39.ProdHomeCoordinator(goRouter: gh<_i36.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i40.HomeStore>(
      () => _i40.HomeStore(homeCoordinator: gh<_i38.HomeCoordinator>()));
  gh.singleton<_i37.MenuCoordinator>(
      _i41.ProdMenuCoordinator(goRouter: gh<_i36.GoRouter>()));
  gh.factory<_i42.MenuStore>(
      () => _i42.MenuStore(menuCoordinator: gh<_i43.MenuCoordinator>()));
  gh.singleton<_i37.PostCoordinator>(
      _i44.ProdPostCoordinator(goRouter: gh<_i36.GoRouter>()));
  gh.factory<_i45.PostStore>(() => _i45.PostStore(
        postService: gh<_i25.PostService>(),
        postCoordinator: gh<_i46.PostCoordinator>(),
      ));
  gh.singleton<_i37.RulesCoordinator>(
      _i47.ProdRulesCoordinator(goRouter: gh<_i36.GoRouter>()));
  gh.factory<_i48.RulesStore>(() => _i48.RulesStore(
        rulesService: gh<_i49.RulesService>(),
        rulesCoordinator: gh<_i50.RulesCoordinator>(),
      ));
  gh.singleton<_i37.SettingsCoordinator>(
      _i51.ProdSettingsCoordinator(goRouter: gh<_i36.GoRouter>()));
  gh.factory<_i52.SettingsStore>(() => _i52.SettingsStore(
        authService: gh<_i53.AuthService>(),
        settingsCoordinator: gh<_i54.SettingsCoordinator>(),
      ));
  gh.singleton<_i37.AuthCoordinator>(
    _i55.ProdAuthCoordinator(
      goRouter: gh<_i36.GoRouter>(),
      authService: gh<_i37.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i56.AuthStore>(() => _i56.AuthStore(
        authService: gh<_i6.AuthService>(),
        authCoordinator: gh<_i57.AuthCoordinator>(),
        authStringProvider: gh<_i31.AuthStringProvider>(),
      ));
  gh.singleton<_i58.CommentMapper>(
      _i58.CommentMapper(dateFormatProvider: gh<_i53.DateFormatProvider>()));
  gh.factory<_i59.CommentStore>(() => _i59.CommentStore(
        commentService: gh<_i13.CommentService>(),
        commentMapper: gh<_i58.CommentMapper>(),
      ));
  gh.singleton<_i37.FeedCoordinator>(
      _i60.ProdFeedCoordinator(goRouter: gh<_i36.GoRouter>()));
  gh.factory<_i61.FeedStore>(() => _i61.FeedStore(
        categoryStore: gh<_i5.CategoryStore>(),
        feedService: gh<_i18.FeedService>(),
        feedCoordinator: gh<_i62.FeedCoordinator>(),
      ));
  return getIt;
}

class _$RouterModule extends _i63.RouterModule {}

class _$FirebaseModule extends _i64.FirebaseModule {}
