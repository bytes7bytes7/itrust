// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i20;
import 'package:flutter/material.dart' as _i23;
import 'package:flutter/widgets.dart' as _i33;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i39;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/auth_coordinator.dart'
    as _i61;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i51;
import 'package:itrust/features/auth/application/providers/auth_string_provider.dart'
    as _i36;
import 'package:itrust/features/auth/application/stores/auth/auth_store.dart'
    as _i60;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i49;
import 'package:itrust/features/auth/auth.dart' as _i29;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i50;
import 'package:itrust/features/auth/infrastructure/providers/auth_string_provider.dart'
    as _i37;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i30;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i12;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i10;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i11;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i8;
import 'package:itrust/features/common/application/application.dart' as _i31;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i21;
import 'package:itrust/features/common/common.dart' as _i54;
import 'package:itrust/features/common/domain/domain.dart' as _i6;
import 'package:itrust/features/common/infrastructure/mappers/post_mapper.dart'
    as _i56;
import 'package:itrust/features/common/infrastructure/persistence/chat_repository.dart'
    as _i9;
import 'package:itrust/features/common/infrastructure/persistence/user_repository.dart'
    as _i34;
import 'package:itrust/features/common/infrastructure/providers/beautified_number_provider.dart'
    as _i38;
import 'package:itrust/features/common/infrastructure/providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/infrastructure/providers/formatted_date_provider.dart'
    as _i22;
import 'package:itrust/features/common/infrastructure/providers/suffix_number_provider.dart'
    as _i32;
import 'package:itrust/features/common/infrastructure/services/auth_service.dart'
    as _i35;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i7;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i15;
import 'package:itrust/features/features.dart' as _i40;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i68;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i5;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i67;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i3;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i18;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i4;
import 'package:itrust/features/feed/infrastructure/services/feed_service.dart'
    as _i19;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i26;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i24;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i25;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i46;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i45;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i64;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i71;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i65;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i63;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i70;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i69;
import 'package:itrust/features/post/application/view_models/comment/comment_vm.dart'
    as _i57;
import 'package:itrust/features/post/domain/domain.dart' as _i13;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i27;
import 'package:itrust/features/post/infrastructure/mappers/comment_mapper.dart'
    as _i58;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i14;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i28;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i55;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i53;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i41;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i43;
import 'package:itrust/main/infrastructure/coordinators/auth_coordinator.dart'
    as _i59;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i62;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i66;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i42;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i44;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i47;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i48;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i52;

import '../router/router.dart' as _i72;
import '../third_party/firebase_module.dart' as _i73;

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
  gh.singleton<_i21.FormattedDateProvider>(_i22.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i16.DateTimeProvider>()));
  gh.singleton<_i23.GlobalKey<_i23.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i24.LockService>(
    _i25.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i26.LockStore>(
      () => _i26.LockStore(lockService: gh<_i24.LockService>()));
  gh.singleton<_i27.PostService>(
    _i28.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i29.RulesService>(
    _i30.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i31.SuffixNumberProvider>(_i32.ProdSuffixNumberProvider(
      navigatorKey: gh<_i33.GlobalKey<_i33.NavigatorState>>()));
  gh.singleton<_i6.UserRepository>(
      _i34.ProdUserRepository(firebaseAuth: gh<_i20.FirebaseAuth>()));
  await gh.singletonAsync<_i6.AuthService>(
    () {
      final i = _i35.ProdAuthService(firebaseAuth: gh<_i20.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i36.AuthStringProvider>(_i37.ProdAuthStringProvider(
      navigatorKey: gh<_i33.GlobalKey<_i33.NavigatorState>>()));
  gh.singleton<_i31.BeautifiedNumberProvider>(_i38.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i31.SuffixNumberProvider>()));
  gh.singleton<_i39.GoRouter>(routerModule.router(
    gh<_i23.GlobalKey<_i23.NavigatorState>>(),
    gh<_i40.AuthService>(),
  ));
  gh.singleton<_i41.HomeCoordinator>(
    _i42.ProdHomeCoordinator(goRouter: gh<_i39.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i43.HomeStore>(
      () => _i43.HomeStore(homeCoordinator: gh<_i41.HomeCoordinator>()));
  gh.singleton<_i40.MenuCoordinator>(
      _i44.ProdMenuCoordinator(goRouter: gh<_i39.GoRouter>()));
  gh.factory<_i45.MenuStore>(
      () => _i45.MenuStore(menuCoordinator: gh<_i46.MenuCoordinator>()));
  gh.singleton<_i40.PostCoordinator>(
      _i47.ProdPostCoordinator(goRouter: gh<_i39.GoRouter>()));
  gh.singleton<_i40.RulesCoordinator>(
      _i48.ProdRulesCoordinator(goRouter: gh<_i39.GoRouter>()));
  gh.factory<_i49.RulesStore>(() => _i49.RulesStore(
        rulesService: gh<_i50.RulesService>(),
        rulesCoordinator: gh<_i51.RulesCoordinator>(),
      ));
  gh.singleton<_i40.SettingsCoordinator>(
      _i52.ProdSettingsCoordinator(goRouter: gh<_i39.GoRouter>()));
  gh.factory<_i53.SettingsStore>(() => _i53.SettingsStore(
        authService: gh<_i54.AuthService>(),
        settingsCoordinator: gh<_i55.SettingsCoordinator>(),
      ));
  gh.singleton<
          _i31.TwoEntitiesToViewModelMapper<_i6.Post, _i6.User, _i31.PostVM>>(
      _i56.PostMapper(
    formattedDateProvider: gh<_i31.FormattedDateProvider>(),
    beautifiedNumberProvider: gh<_i31.BeautifiedNumberProvider>(),
  ));
  gh.singleton<
      _i54.TwoEntitiesToViewModelMapper<_i13.Comment, _i54.User,
          _i57.CommentVM>>(_i58.CommentMapper(
    dateFormatProvider: gh<_i54.FormattedDateProvider>(),
    beautifiedNumberProvider: gh<_i54.BeautifiedNumberProvider>(),
  ));
  gh.singleton<_i40.AuthCoordinator>(
    _i59.ProdAuthCoordinator(
      goRouter: gh<_i39.GoRouter>(),
      authService: gh<_i40.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i60.AuthStore>(() => _i60.AuthStore(
        authService: gh<_i6.AuthService>(),
        authCoordinator: gh<_i61.AuthCoordinator>(),
        authStringProvider: gh<_i36.AuthStringProvider>(),
      ));
  gh.singleton<_i40.CommentCoordinator>(
      _i62.ProdCommentCoordinator(goRouter: gh<_i39.GoRouter>()));
  gh.factory<_i63.CommentReplyStore>(() => _i63.CommentReplyStore(
        commentService: gh<_i13.CommentService>(),
        commentCoordinator: gh<_i64.CommentCoordinator>(),
        commentMapper: gh<
            _i54.TwoEntitiesToViewModelMapper<_i13.Comment, _i54.User,
                _i57.CommentVM>>(),
      ));
  gh.factory<_i65.CommentStore>(() => _i65.CommentStore(
        commentReplyStore: gh<_i63.CommentReplyStore>(),
        commentService: gh<_i13.CommentService>(),
        commentCoordinator: gh<_i64.CommentCoordinator>(),
        commentMapper: gh<
            _i54.TwoEntitiesToViewModelMapper<_i13.Comment, _i54.User,
                _i57.CommentVM>>(),
      ));
  gh.singleton<_i40.FeedCoordinator>(
      _i66.ProdFeedCoordinator(goRouter: gh<_i39.GoRouter>()));
  gh.factory<_i67.FeedStore>(() => _i67.FeedStore(
        categoryStore: gh<_i5.CategoryStore>(),
        feedService: gh<_i18.FeedService>(),
        feedCoordinator: gh<_i68.FeedCoordinator>(),
        postMapper: gh<
            _i54.TwoEntitiesToViewModelMapper<_i54.Post, _i54.User,
                _i54.PostVM>>(),
      ));
  gh.factory<_i69.PostCommentStore>(() => _i69.PostCommentStore(
        commentService: gh<_i13.CommentService>(),
        commentCoordinator: gh<_i64.CommentCoordinator>(),
        commentMapper: gh<
            _i54.TwoEntitiesToViewModelMapper<_i13.Comment, _i54.User,
                _i57.CommentVM>>(),
      ));
  gh.factory<_i70.PostStore>(() => _i70.PostStore(
        postCommentStore: gh<_i69.PostCommentStore>(),
        postService: gh<_i27.PostService>(),
        postCoordinator: gh<_i71.PostCoordinator>(),
        postMapper: gh<
            _i54.TwoEntitiesToViewModelMapper<_i54.Post, _i54.User,
                _i54.PostVM>>(),
      ));
  return getIt;
}

class _$RouterModule extends _i72.RouterModule {}

class _$FirebaseModule extends _i73.FirebaseModule {}
