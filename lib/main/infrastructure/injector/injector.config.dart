// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i17;
import 'package:flutter/material.dart' as _i20;
import 'package:flutter/widgets.dart' as _i26;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i58;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/auth_coordinator.dart'
    as _i84;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i70;
import 'package:itrust/features/auth/application/providers/auth_string_provider.dart'
    as _i44;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i83;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i88;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i68;
import 'package:itrust/features/auth/auth.dart' as _i32;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i69;
import 'package:itrust/features/auth/infrastructure/providers/auth_string_provider.dart'
    as _i45;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i33;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i11;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i9;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i10;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i34;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i15;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i18;
import 'package:itrust/features/common/common.dart' as _i55;
import 'package:itrust/features/common/domain/domain.dart' as _i5;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i41;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i43;
import 'package:itrust/features/common/infrastructure/providers/auth_provider/auth_provider.dart'
    as _i42;
import 'package:itrust/features/common/infrastructure/providers/beautified_number_provider.dart'
    as _i46;
import 'package:itrust/features/common/infrastructure/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/infrastructure/providers/formatted_date_provider.dart'
    as _i19;
import 'package:itrust/features/common/infrastructure/providers/suffix_number_provider.dart'
    as _i35;
import 'package:itrust/features/common/infrastructure/repositories/chat_repository.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/repositories/post_repository.dart'
    as _i27;
import 'package:itrust/features/common/infrastructure/repositories/user_repository.dart'
    as _i40;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i14;
import 'package:itrust/features/features.dart' as _i59;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i82;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i47;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i56;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i89;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i81;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i3;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i53;
import 'package:itrust/features/feed/infrastructure/providers/category_string_provider.dart'
    as _i48;
import 'package:itrust/features/feed/infrastructure/providers/feed_string_provider.dart'
    as _i57;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i4;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i54;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i23;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i21;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i22;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i65;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i64;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i77;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i87;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i49;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i51;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i24;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i30;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i79;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i76;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i86;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i85;
import 'package:itrust/features/post/domain/domain.dart' as _i12;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i28;
import 'package:itrust/features/post/infrastructure/providers/comment_reply_string_provider.dart'
    as _i50;
import 'package:itrust/features/post/infrastructure/providers/comment_string_provider.dart'
    as _i52;
import 'package:itrust/features/post/infrastructure/providers/post_comment_string_provider.dart'
    as _i25;
import 'package:itrust/features/post/infrastructure/providers/post_string_provider.dart'
    as _i31;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i13;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i29;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i73;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i72;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i38;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i36;
import 'package:itrust/features/user_wall/infrastructure/providers/user_info_string_provider.dart'
    as _i39;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i37;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i60;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i62;
import 'package:itrust/main/infrastructure/coordinators/auth_coordinator.dart'
    as _i74;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i75;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i80;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i61;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i63;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i66;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i67;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i71;
import 'package:mapster/mapster.dart' as _i78;

import '../../../features/common/infrastructure/third_party/dio_module.dart'
    as _i90;
import '../router/router.dart' as _i91;

const String _test = 'test';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
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
  final dioModule = _$DioModule();
  final routerModule = _$RouterModule();
  gh.singleton<_i3.CategoryService>(
    _i4.TestCategoryService(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i5.ChatListService>(
    () => _i6.TestChatListService()..init(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i7.ChatListStore>(
      _i7.ChatListStore(chatListService: gh<_i5.ChatListService>()));
  gh.lazySingleton<_i5.ChatRepository>(
    () => _i8.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i9.ChatService>(
    _i10.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i11.ChatStore>(
      () => _i11.ChatStore(chatService: gh<_i9.ChatService>()));
  gh.singleton<_i12.CommentService>(
    _i13.TestCommentService(),
    registerFor: {_test},
  );
  gh.factory<_i14.ConnectionStore>(() => _i14.ConnectionStore());
  gh.singleton<_i15.DateTimeProvider>(_i16.ProdDateTimeProvider());
  gh.singleton<_i17.Dio>(dioModule.dio);
  gh.singleton<_i18.FormattedDateProvider>(_i19.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i15.DateTimeProvider>()));
  gh.singleton<_i20.GlobalKey<_i20.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i21.LockService>(
    _i22.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i23.LockStore>(
      () => _i23.LockStore(lockService: gh<_i21.LockService>()));
  gh.singleton<_i24.PostCommentStringProvider>(
      _i25.ProdPostCommentStringProvider(
          navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singleton<_i5.PostRepository>(_i27.ProdPostRepository());
  gh.singleton<_i28.PostService>(
    _i29.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i30.PostStringProvider>(_i31.ProdPostStringProvider(
      navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singleton<_i32.RulesService>(
    _i33.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i34.SuffixNumberProvider>(_i35.ProdSuffixNumberProvider(
      navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singleton<_i36.UserInfoService>(_i37.TestUserService());
  gh.singleton<_i38.UserInfoStringProvider>(_i39.ProdUserInfoStringProvider(
      navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singleton<_i5.UserRepository>(
    _i40.TestUserRepository(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i41.AuthProvider>(_i42.ProdAuthProvider(gh<_i17.Dio>()));
  gh.singletonAsync<_i43.AuthService>(
    () {
      final i = _i43.AuthService(authProvider: gh<_i41.AuthProvider>());
      return i.init().then((_) => i);
    },
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i44.AuthStringProvider>(_i45.ProdAuthStringProvider(
      navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singleton<_i34.BeautifiedNumberProvider>(_i46.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i34.SuffixNumberProvider>()));
  gh.singleton<_i47.CategoryStringProvider>(_i48.ProdCategoryStringProvider(
      navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singleton<_i49.CommentReplyStringProvider>(
      _i50.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singleton<_i51.CommentStringProvider>(_i52.ProdCommentStringProvider(
      navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singleton<_i53.FeedService>(_i54.ProdFeedService(
    postRepository: gh<_i55.PostRepository>(),
    userRepository: gh<_i55.UserRepository>(),
  ));
  gh.singleton<_i56.FeedStringProvider>(_i57.ProdFeedStringProvider(
      navigatorKey: gh<_i26.GlobalKey<_i26.NavigatorState>>()));
  gh.singletonAsync<_i58.GoRouter>(() async => routerModule.router(
        gh<_i20.GlobalKey<_i20.NavigatorState>>(),
        await gh.getAsync<_i59.AuthService>(),
      ));
  gh.singletonAsync<_i60.HomeCoordinator>(
    () async =>
        _i61.ProdHomeCoordinator(goRouter: await gh.getAsync<_i58.GoRouter>())
          ..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factoryAsync<_i62.HomeStore>(() async => _i62.HomeStore(
      homeCoordinator: await gh.getAsync<_i60.HomeCoordinator>()));
  gh.singletonAsync<_i59.MenuCoordinator>(() async =>
      _i63.ProdMenuCoordinator(goRouter: await gh.getAsync<_i58.GoRouter>()));
  gh.singletonAsync<_i64.MenuStore>(() async => _i64.MenuStore(
      menuCoordinator: await gh.getAsync<_i65.MenuCoordinator>()));
  gh.singletonAsync<_i59.PostCoordinator>(() async =>
      _i66.ProdPostCoordinator(goRouter: await gh.getAsync<_i58.GoRouter>()));
  gh.singletonAsync<_i59.RulesCoordinator>(() async =>
      _i67.ProdRulesCoordinator(goRouter: await gh.getAsync<_i58.GoRouter>()));
  gh.factoryAsync<_i68.RulesStore>(() async => _i68.RulesStore(
        rulesService: gh<_i69.RulesService>(),
        rulesCoordinator: await gh.getAsync<_i70.RulesCoordinator>(),
      ));
  gh.singletonAsync<_i59.SettingsCoordinator>(() async =>
      _i71.ProdSettingsCoordinator(
          goRouter: await gh.getAsync<_i58.GoRouter>()));
  gh.factoryAsync<_i72.SettingsStore>(() async => _i72.SettingsStore(
        authService: await gh.getAsync<_i55.AuthService>(),
        settingsCoordinator: await gh.getAsync<_i73.SettingsCoordinator>(),
      ));
  gh.singletonAsync<_i59.AuthCoordinator>(
    () async => _i74.ProdAuthCoordinator(
      goRouter: await gh.getAsync<_i58.GoRouter>(),
      authService: await gh.getAsync<_i59.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.singletonAsync<_i59.CommentCoordinator>(() async =>
      _i75.ProdCommentCoordinator(
          goRouter: await gh.getAsync<_i58.GoRouter>()));
  gh.factoryAsync<_i76.CommentReplyStore>(() async => _i76.CommentReplyStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: await gh.getAsync<_i77.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i49.CommentReplyStringProvider>(),
        mapster: gh<_i78.Mapster>(),
      ));
  gh.factoryAsync<_i79.CommentStore>(() async => _i79.CommentStore(
        commentReplyStore: await gh.getAsync<_i76.CommentReplyStore>(),
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: await gh.getAsync<_i77.CommentCoordinator>(),
        commentStringProvider: gh<_i51.CommentStringProvider>(),
        mapster: gh<_i78.Mapster>(),
      ));
  gh.singletonAsync<_i59.FeedCoordinator>(() async =>
      _i80.ProdFeedCoordinator(goRouter: await gh.getAsync<_i58.GoRouter>()));
  gh.factoryAsync<_i81.FeedStore>(() async => _i81.FeedStore(
        feedService: gh<_i53.FeedService>(),
        feedCoordinator: await gh.getAsync<_i82.FeedCoordinator>(),
        feedStringProvider: gh<_i56.FeedStringProvider>(),
        mapster: gh<_i78.Mapster>(),
      ));
  gh.factoryAsync<_i83.LogInStore>(() async => _i83.LogInStore(
        authService: await gh.getAsync<_i5.AuthService>(),
        authCoordinator: await gh.getAsync<_i84.AuthCoordinator>(),
        authStringProvider: gh<_i44.AuthStringProvider>(),
      ));
  gh.factoryAsync<_i85.PostCommentStore>(() async => _i85.PostCommentStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: await gh.getAsync<_i77.CommentCoordinator>(),
        postCommentStringProvider: gh<_i24.PostCommentStringProvider>(),
        mapster: gh<_i78.Mapster>(),
      ));
  gh.factoryAsync<_i86.PostStore>(() async => _i86.PostStore(
        postCommentStore: await gh.getAsync<_i85.PostCommentStore>(),
        postService: gh<_i28.PostService>(),
        postCoordinator: await gh.getAsync<_i87.PostCoordinator>(),
        postStringProvider: gh<_i30.PostStringProvider>(),
        mapster: gh<_i78.Mapster>(),
      ));
  gh.factoryAsync<_i88.RegisterStore>(() async => _i88.RegisterStore(
        authService: await gh.getAsync<_i5.AuthService>(),
        authCoordinator: await gh.getAsync<_i84.AuthCoordinator>(),
        authStringProvider: gh<_i44.AuthStringProvider>(),
      ));
  gh.singletonAsync<_i89.CategoryStore>(() async => _i89.CategoryStore(
        feedStore: await gh.getAsync<_i81.FeedStore>(),
        categoryService: gh<_i3.CategoryService>(),
        categoryStringProvider: gh<_i47.CategoryStringProvider>(),
      ));
  return getIt;
}

class _$DioModule extends _i90.DioModule {}

class _$RouterModule extends _i91.RouterModule {}
