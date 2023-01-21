// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i19;
import 'package:flutter/material.dart' as _i22;
import 'package:flutter/widgets.dart' as _i28;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i54;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/auth_coordinator.dart'
    as _i76;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i66;
import 'package:itrust/features/auth/application/providers/auth_string_provider.dart'
    as _i43;
import 'package:itrust/features/auth/application/stores/auth/auth_store.dart'
    as _i75;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i64;
import 'package:itrust/features/auth/auth.dart' as _i33;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i65;
import 'package:itrust/features/auth/infrastructure/providers/auth_string_provider.dart'
    as _i44;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i34;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i11;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i9;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i10;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i35;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i15;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i20;
import 'package:itrust/features/common/common.dart' as _i69;
import 'package:itrust/features/common/domain/domain.dart' as _i5;
import 'package:itrust/features/common/infrastructure/mappers/post_mapper.dart'
    as _i71;
import 'package:itrust/features/common/infrastructure/persistence/chat_repository.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/persistence/user_repository.dart'
    as _i41;
import 'package:itrust/features/common/infrastructure/providers/beautified_number_provider.dart'
    as _i45;
import 'package:itrust/features/common/infrastructure/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/infrastructure/providers/formatted_date_provider.dart'
    as _i21;
import 'package:itrust/features/common/infrastructure/providers/suffix_number_provider.dart'
    as _i36;
import 'package:itrust/features/common/infrastructure/services/auth_service.dart'
    as _i42;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i14;
import 'package:itrust/features/features.dart' as _i55;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i83;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i46;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i52;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i87;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i82;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i3;
import 'package:itrust/features/feed/domain/services/feed_service.dart' as _i17;
import 'package:itrust/features/feed/infrastructure/providers/category_string_provider.dart'
    as _i47;
import 'package:itrust/features/feed/infrastructure/providers/feed_string_provider.dart'
    as _i53;
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
    as _i61;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i60;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i79;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i86;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i48;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i50;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i26;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i31;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i80;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i78;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i85;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i84;
import 'package:itrust/features/post/application/view_models/comment/comment_vm.dart'
    as _i72;
import 'package:itrust/features/post/domain/domain.dart' as _i12;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i29;
import 'package:itrust/features/post/infrastructure/mappers/comment_mapper.dart'
    as _i73;
import 'package:itrust/features/post/infrastructure/providers/comment_reply_string_provider.dart'
    as _i49;
import 'package:itrust/features/post/infrastructure/providers/comment_string_provider.dart'
    as _i51;
import 'package:itrust/features/post/infrastructure/providers/post_comment_string_provider.dart'
    as _i27;
import 'package:itrust/features/post/infrastructure/providers/post_string_provider.dart'
    as _i32;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i13;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i30;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i70;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i68;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i39;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i37;
import 'package:itrust/features/user_wall/infrastructure/providers/user_info_string_provider.dart'
    as _i40;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i38;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i56;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i58;
import 'package:itrust/main/infrastructure/coordinators/auth_coordinator.dart'
    as _i74;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i77;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i81;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i57;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i59;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i62;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i63;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i67;

import '../router/router.dart' as _i88;
import '../third_party/firebase_module.dart' as _i89;

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
  gh.singleton<_i26.PostCommentStringProvider>(
      _i27.ProdPostCommentStringProvider(
          navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i29.PostService>(
    _i30.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i31.PostStringProvider>(_i32.ProdPostStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i33.RulesService>(
    _i34.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i35.SuffixNumberProvider>(_i36.ProdSuffixNumberProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i37.UserInfoService>(_i38.TestUserService());
  gh.singleton<_i39.UserInfoStringProvider>(_i40.ProdUserInfoStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i5.UserRepository>(
      _i41.ProdUserRepository(firebaseAuth: gh<_i19.FirebaseAuth>()));
  await gh.singletonAsync<_i5.AuthService>(
    () {
      final i = _i42.ProdAuthService(firebaseAuth: gh<_i19.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i43.AuthStringProvider>(_i44.ProdAuthStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i35.BeautifiedNumberProvider>(_i45.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i35.SuffixNumberProvider>()));
  gh.singleton<_i46.CategoryStringProvider>(_i47.ProdCategoryStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i48.CommentReplyStringProvider>(
      _i49.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i50.CommentStringProvider>(_i51.ProdCommentStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i52.FeedStringProvider>(_i53.ProdFeedStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i54.GoRouter>(routerModule.router(
    gh<_i22.GlobalKey<_i22.NavigatorState>>(),
    gh<_i55.AuthService>(),
  ));
  gh.singleton<_i56.HomeCoordinator>(
    _i57.ProdHomeCoordinator(goRouter: gh<_i54.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i58.HomeStore>(
      () => _i58.HomeStore(homeCoordinator: gh<_i56.HomeCoordinator>()));
  gh.singleton<_i55.MenuCoordinator>(
      _i59.ProdMenuCoordinator(goRouter: gh<_i54.GoRouter>()));
  gh.singleton<_i60.MenuStore>(
      _i60.MenuStore(menuCoordinator: gh<_i61.MenuCoordinator>()));
  gh.singleton<_i55.PostCoordinator>(
      _i62.ProdPostCoordinator(goRouter: gh<_i54.GoRouter>()));
  gh.singleton<_i55.RulesCoordinator>(
      _i63.ProdRulesCoordinator(goRouter: gh<_i54.GoRouter>()));
  gh.factory<_i64.RulesStore>(() => _i64.RulesStore(
        rulesService: gh<_i65.RulesService>(),
        rulesCoordinator: gh<_i66.RulesCoordinator>(),
      ));
  gh.singleton<_i55.SettingsCoordinator>(
      _i67.ProdSettingsCoordinator(goRouter: gh<_i54.GoRouter>()));
  gh.factory<_i68.SettingsStore>(() => _i68.SettingsStore(
        authService: gh<_i69.AuthService>(),
        settingsCoordinator: gh<_i70.SettingsCoordinator>(),
      ));
  gh.singleton<
          _i35.TwoEntitiesToViewModelMapper<_i5.Post, _i5.User, _i35.PostVM>>(
      _i71.PostMapper(
    formattedDateProvider: gh<_i35.FormattedDateProvider>(),
    beautifiedNumberProvider: gh<_i35.BeautifiedNumberProvider>(),
  ));
  gh.singleton<
      _i69.TwoEntitiesToViewModelMapper<_i12.Comment, _i69.User,
          _i72.CommentVM>>(_i73.CommentMapper(
    dateFormatProvider: gh<_i69.FormattedDateProvider>(),
    beautifiedNumberProvider: gh<_i69.BeautifiedNumberProvider>(),
  ));
  gh.singleton<_i55.AuthCoordinator>(
    _i74.ProdAuthCoordinator(
      goRouter: gh<_i54.GoRouter>(),
      authService: gh<_i55.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i75.AuthStore>(() => _i75.AuthStore(
        authService: gh<_i5.AuthService>(),
        authCoordinator: gh<_i76.AuthCoordinator>(),
        authStringProvider: gh<_i43.AuthStringProvider>(),
      ));
  gh.singleton<_i55.CommentCoordinator>(
      _i77.ProdCommentCoordinator(goRouter: gh<_i54.GoRouter>()));
  gh.factory<_i78.CommentReplyStore>(() => _i78.CommentReplyStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i79.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i48.CommentReplyStringProvider>(),
        commentMapper: gh<
            _i69.TwoEntitiesToViewModelMapper<_i12.Comment, _i69.User,
                _i72.CommentVM>>(),
      ));
  gh.factory<_i80.CommentStore>(() => _i80.CommentStore(
        commentReplyStore: gh<_i78.CommentReplyStore>(),
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i79.CommentCoordinator>(),
        commentStringProvider: gh<_i50.CommentStringProvider>(),
        commentMapper: gh<
            _i69.TwoEntitiesToViewModelMapper<_i12.Comment, _i69.User,
                _i72.CommentVM>>(),
      ));
  gh.singleton<_i55.FeedCoordinator>(
      _i81.ProdFeedCoordinator(goRouter: gh<_i54.GoRouter>()));
  gh.factory<_i82.FeedStore>(() => _i82.FeedStore(
        feedService: gh<_i17.FeedService>(),
        feedCoordinator: gh<_i83.FeedCoordinator>(),
        feedStringProvider: gh<_i52.FeedStringProvider>(),
        postMapper: gh<
            _i69.TwoEntitiesToViewModelMapper<_i69.Post, _i69.User,
                _i69.PostVM>>(),
      ));
  gh.factory<_i84.PostCommentStore>(() => _i84.PostCommentStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i79.CommentCoordinator>(),
        postCommentStringProvider: gh<_i26.PostCommentStringProvider>(),
        commentMapper: gh<
            _i69.TwoEntitiesToViewModelMapper<_i12.Comment, _i69.User,
                _i72.CommentVM>>(),
      ));
  gh.factory<_i85.PostStore>(() => _i85.PostStore(
        postCommentStore: gh<_i84.PostCommentStore>(),
        postService: gh<_i29.PostService>(),
        postCoordinator: gh<_i86.PostCoordinator>(),
        postStringProvider: gh<_i31.PostStringProvider>(),
        postMapper: gh<
            _i69.TwoEntitiesToViewModelMapper<_i69.Post, _i69.User,
                _i69.PostVM>>(),
      ));
  gh.singleton<_i87.CategoryStore>(_i87.CategoryStore(
    feedStore: gh<_i82.FeedStore>(),
    categoryService: gh<_i3.CategoryService>(),
    categoryStringProvider: gh<_i46.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$RouterModule extends _i88.RouterModule {}

class _$FirebaseModule extends _i89.FirebaseModule {}
