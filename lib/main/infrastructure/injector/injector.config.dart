// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i19;
import 'package:flutter/material.dart' as _i22;
import 'package:flutter/widgets.dart' as _i32;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i42;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/auth_coordinator.dart'
    as _i64;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i54;
import 'package:itrust/features/auth/application/providers/auth_string_provider.dart'
    as _i35;
import 'package:itrust/features/auth/application/stores/auth/auth_store.dart'
    as _i63;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i52;
import 'package:itrust/features/auth/auth.dart' as _i28;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i53;
import 'package:itrust/features/auth/infrastructure/providers/auth_string_provider.dart'
    as _i36;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i29;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i11;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i9;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i10;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i30;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i15;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i20;
import 'package:itrust/features/common/common.dart' as _i57;
import 'package:itrust/features/common/domain/domain.dart' as _i5;
import 'package:itrust/features/common/infrastructure/mappers/post_mapper.dart'
    as _i59;
import 'package:itrust/features/common/infrastructure/persistence/chat_repository.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/persistence/user_repository.dart'
    as _i33;
import 'package:itrust/features/common/infrastructure/providers/beautified_number_provider.dart'
    as _i37;
import 'package:itrust/features/common/infrastructure/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/infrastructure/providers/formatted_date_provider.dart'
    as _i21;
import 'package:itrust/features/common/infrastructure/providers/suffix_number_provider.dart'
    as _i31;
import 'package:itrust/features/common/infrastructure/services/auth_service.dart'
    as _i34;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i14;
import 'package:itrust/features/features.dart' as _i43;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i72;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i38;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i40;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i65;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i71;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i3;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i17;
import 'package:itrust/features/feed/infrastructure/providers/category_string_provider.dart'
    as _i39;
import 'package:itrust/features/feed/infrastructure/providers/feed_string_provider.dart'
    as _i41;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i4;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i18;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i25;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i23;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i24;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i49;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i48;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i68;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i75;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i69;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i67;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i74;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i73;
import 'package:itrust/features/post/application/view_models/comment/comment_vm.dart'
    as _i60;
import 'package:itrust/features/post/domain/domain.dart' as _i12;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i26;
import 'package:itrust/features/post/infrastructure/mappers/comment_mapper.dart'
    as _i61;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i13;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i27;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i58;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i56;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i44;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i46;
import 'package:itrust/main/infrastructure/coordinators/auth_coordinator.dart'
    as _i62;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i66;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i70;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i45;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i47;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i50;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i51;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i55;

import '../router/router.dart' as _i76;
import '../third_party/firebase_module.dart' as _i77;

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
  gh.lazySingleton<_i5.ChatListService>(
    () => _i6.TestChatListService()..init(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i7.ChatListStore>(
      () => _i7.ChatListStore(chatListService: gh<_i5.ChatListService>()));
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
  gh.singleton<_i17.FeedService>(
    _i18.TestFeedService(),
    registerFor: {_test},
  );
  gh.singleton<_i19.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i20.FormattedDateProvider>(_i21.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i15.DateTimeProvider>()));
  gh.singleton<_i22.GlobalKey<_i22.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i23.LockService>(
    _i24.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i25.LockStore>(
      () => _i25.LockStore(lockService: gh<_i23.LockService>()));
  gh.singleton<_i26.PostService>(
    _i27.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i28.RulesService>(
    _i29.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i30.SuffixNumberProvider>(_i31.ProdSuffixNumberProvider(
      navigatorKey: gh<_i32.GlobalKey<_i32.NavigatorState>>()));
  gh.singleton<_i5.UserRepository>(
      _i33.ProdUserRepository(firebaseAuth: gh<_i19.FirebaseAuth>()));
  await gh.singletonAsync<_i5.AuthService>(
    () {
      final i = _i34.ProdAuthService(firebaseAuth: gh<_i19.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i35.AuthStringProvider>(_i36.ProdAuthStringProvider(
      navigatorKey: gh<_i32.GlobalKey<_i32.NavigatorState>>()));
  gh.singleton<_i30.BeautifiedNumberProvider>(_i37.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i30.SuffixNumberProvider>()));
  gh.singleton<_i38.CategoryStringProvider>(_i39.ProdCategoryStringProvider(
      navigatorKey: gh<_i32.GlobalKey<_i32.NavigatorState>>()));
  gh.singleton<_i40.FeedStringProvider>(_i41.ProdFeedStringProvider(
      navigatorKey: gh<_i32.GlobalKey<_i32.NavigatorState>>()));
  gh.singleton<_i42.GoRouter>(routerModule.router(
    gh<_i22.GlobalKey<_i22.NavigatorState>>(),
    gh<_i43.AuthService>(),
  ));
  gh.singleton<_i44.HomeCoordinator>(
    _i45.ProdHomeCoordinator(goRouter: gh<_i42.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i46.HomeStore>(
      () => _i46.HomeStore(homeCoordinator: gh<_i44.HomeCoordinator>()));
  gh.singleton<_i43.MenuCoordinator>(
      _i47.ProdMenuCoordinator(goRouter: gh<_i42.GoRouter>()));
  gh.factory<_i48.MenuStore>(
      () => _i48.MenuStore(menuCoordinator: gh<_i49.MenuCoordinator>()));
  gh.singleton<_i43.PostCoordinator>(
      _i50.ProdPostCoordinator(goRouter: gh<_i42.GoRouter>()));
  gh.singleton<_i43.RulesCoordinator>(
      _i51.ProdRulesCoordinator(goRouter: gh<_i42.GoRouter>()));
  gh.factory<_i52.RulesStore>(() => _i52.RulesStore(
        rulesService: gh<_i53.RulesService>(),
        rulesCoordinator: gh<_i54.RulesCoordinator>(),
      ));
  gh.singleton<_i43.SettingsCoordinator>(
      _i55.ProdSettingsCoordinator(goRouter: gh<_i42.GoRouter>()));
  gh.factory<_i56.SettingsStore>(() => _i56.SettingsStore(
        authService: gh<_i57.AuthService>(),
        settingsCoordinator: gh<_i58.SettingsCoordinator>(),
      ));
  gh.singleton<
          _i30.TwoEntitiesToViewModelMapper<_i5.Post, _i5.User, _i30.PostVM>>(
      _i59.PostMapper(
    formattedDateProvider: gh<_i30.FormattedDateProvider>(),
    beautifiedNumberProvider: gh<_i30.BeautifiedNumberProvider>(),
  ));
  gh.singleton<
      _i57.TwoEntitiesToViewModelMapper<_i12.Comment, _i57.User,
          _i60.CommentVM>>(_i61.CommentMapper(
    dateFormatProvider: gh<_i57.FormattedDateProvider>(),
    beautifiedNumberProvider: gh<_i57.BeautifiedNumberProvider>(),
  ));
  gh.singleton<_i43.AuthCoordinator>(
    _i62.ProdAuthCoordinator(
      goRouter: gh<_i42.GoRouter>(),
      authService: gh<_i43.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i63.AuthStore>(() => _i63.AuthStore(
        authService: gh<_i5.AuthService>(),
        authCoordinator: gh<_i64.AuthCoordinator>(),
        authStringProvider: gh<_i35.AuthStringProvider>(),
      ));
  gh.factory<_i65.CategoryStore>(() => _i65.CategoryStore(
        categoryService: gh<_i3.CategoryService>(),
        categoryStringProvider: gh<_i38.CategoryStringProvider>(),
      ));
  gh.singleton<_i43.CommentCoordinator>(
      _i66.ProdCommentCoordinator(goRouter: gh<_i42.GoRouter>()));
  gh.factory<_i67.CommentReplyStore>(() => _i67.CommentReplyStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i68.CommentCoordinator>(),
        commentMapper: gh<
            _i57.TwoEntitiesToViewModelMapper<_i12.Comment, _i57.User,
                _i60.CommentVM>>(),
      ));
  gh.factory<_i69.CommentStore>(() => _i69.CommentStore(
        commentReplyStore: gh<_i67.CommentReplyStore>(),
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i68.CommentCoordinator>(),
        commentMapper: gh<
            _i57.TwoEntitiesToViewModelMapper<_i12.Comment, _i57.User,
                _i60.CommentVM>>(),
      ));
  gh.singleton<_i43.FeedCoordinator>(
      _i70.ProdFeedCoordinator(goRouter: gh<_i42.GoRouter>()));
  gh.factory<_i71.FeedStore>(() => _i71.FeedStore(
        categoryStore: gh<_i65.CategoryStore>(),
        feedService: gh<_i17.FeedService>(),
        feedCoordinator: gh<_i72.FeedCoordinator>(),
        feedStringProvider: gh<_i40.FeedStringProvider>(),
        postMapper: gh<
            _i57.TwoEntitiesToViewModelMapper<_i57.Post, _i57.User,
                _i57.PostVM>>(),
      ));
  gh.factory<_i73.PostCommentStore>(() => _i73.PostCommentStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i68.CommentCoordinator>(),
        commentMapper: gh<
            _i57.TwoEntitiesToViewModelMapper<_i12.Comment, _i57.User,
                _i60.CommentVM>>(),
      ));
  gh.factory<_i74.PostStore>(() => _i74.PostStore(
        postCommentStore: gh<_i73.PostCommentStore>(),
        postService: gh<_i26.PostService>(),
        postCoordinator: gh<_i75.PostCoordinator>(),
        postMapper: gh<
            _i57.TwoEntitiesToViewModelMapper<_i57.Post, _i57.User,
                _i57.PostVM>>(),
      ));
  return getIt;
}

class _$RouterModule extends _i76.RouterModule {}

class _$FirebaseModule extends _i77.FirebaseModule {}
