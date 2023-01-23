// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i18;
import 'package:firebase_auth/firebase_auth.dart' as _i17;
import 'package:flutter/material.dart' as _i21;
import 'package:flutter/widgets.dart' as _i28;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i58;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/auth_coordinator.dart'
    as _i79;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i70;
import 'package:itrust/features/auth/application/providers/auth_string_provider.dart'
    as _i44;
import 'package:itrust/features/auth/application/stores/auth/auth_store.dart'
    as _i78;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i68;
import 'package:itrust/features/auth/auth.dart' as _i34;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i69;
import 'package:itrust/features/auth/infrastructure/providers/auth_string_provider.dart'
    as _i45;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i35;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i11;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i9;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i10;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i36;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i15;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i19;
import 'package:itrust/features/common/common.dart' as _i55;
import 'package:itrust/features/common/domain/domain.dart' as _i5;
import 'package:itrust/features/common/infrastructure/mappers/post_response_to_post_mapper.dart'
    as _i25;
import 'package:itrust/features/common/infrastructure/mappers/post_user_to_post_vm_mapper.dart'
    as _i76;
import 'package:itrust/features/common/infrastructure/persistence/chat_repository.dart'
    as _i8;
import 'package:itrust/features/common/infrastructure/persistence/post_repository.dart'
    as _i29;
import 'package:itrust/features/common/infrastructure/persistence/user_repository.dart'
    as _i42;
import 'package:itrust/features/common/infrastructure/providers/beautified_number_provider.dart'
    as _i46;
import 'package:itrust/features/common/infrastructure/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/infrastructure/providers/formatted_date_provider.dart'
    as _i20;
import 'package:itrust/features/common/infrastructure/providers/suffix_number_provider.dart'
    as _i37;
import 'package:itrust/features/common/infrastructure/services/auth_service.dart'
    as _i43;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i14;
import 'package:itrust/features/features.dart' as _i59;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i86;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i47;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i56;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i90;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i85;
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
    as _i24;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i22;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i23;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i65;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i64;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i82;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i89;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i49;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i51;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i26;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i32;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i83;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i81;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i88;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i87;
import 'package:itrust/features/post/application/view_models/comment/comment_vm.dart'
    as _i74;
import 'package:itrust/features/post/domain/domain.dart' as _i12;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i30;
import 'package:itrust/features/post/infrastructure/mappers/comment_mapper.dart'
    as _i75;
import 'package:itrust/features/post/infrastructure/providers/comment_reply_string_provider.dart'
    as _i50;
import 'package:itrust/features/post/infrastructure/providers/comment_string_provider.dart'
    as _i52;
import 'package:itrust/features/post/infrastructure/providers/post_comment_string_provider.dart'
    as _i27;
import 'package:itrust/features/post/infrastructure/providers/post_string_provider.dart'
    as _i33;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i13;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i31;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i73;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i72;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i40;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i38;
import 'package:itrust/features/user_wall/infrastructure/providers/user_info_string_provider.dart'
    as _i41;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i39;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i60;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i62;
import 'package:itrust/main/infrastructure/coordinators/auth_coordinator.dart'
    as _i77;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i80;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i84;
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

import '../router/router.dart' as _i91;
import '../third_party/firebase_module.dart' as _i92;

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
  gh.singleton<_i17.FirebaseAuth>(firebaseModule.firebaseAuth);
  gh.singleton<_i18.FirebaseFirestore>(firebaseModule.firebaseFirestore);
  gh.singleton<_i19.FormattedDateProvider>(_i20.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i15.DateTimeProvider>()));
  gh.singleton<_i21.GlobalKey<_i21.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i22.LockService>(
    _i23.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i24.LockStore>(
      () => _i24.LockStore(lockService: gh<_i22.LockService>()));
  gh.singleton<_i5.OneInputMapper<Map<String, dynamic>, _i5.Post>>(
      _i25.PostResponseToPostMapper());
  gh.singleton<_i26.PostCommentStringProvider>(
      _i27.ProdPostCommentStringProvider(
          navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i5.PostRepository>(_i29.FirebasePostRepository(
    firebaseFirestore: gh<_i18.FirebaseFirestore>(),
    postMapper: gh<_i5.OneInputMapper<Map<String, dynamic>, _i5.Post>>(),
  ));
  gh.singleton<_i30.PostService>(
    _i31.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i32.PostStringProvider>(_i33.ProdPostStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i34.RulesService>(
    _i35.TestRulesService(),
    registerFor: {_test},
  );
  gh.singleton<_i36.SuffixNumberProvider>(_i37.ProdSuffixNumberProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i38.UserInfoService>(_i39.TestUserService());
  gh.singleton<_i40.UserInfoStringProvider>(_i41.ProdUserInfoStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i5.UserRepository>(
      _i42.ProdUserRepository(firebaseAuth: gh<_i17.FirebaseAuth>()));
  await gh.singletonAsync<_i5.AuthService>(
    () {
      final i = _i43.ProdAuthService(firebaseAuth: gh<_i17.FirebaseAuth>());
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i44.AuthStringProvider>(_i45.ProdAuthStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i36.BeautifiedNumberProvider>(_i46.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i36.SuffixNumberProvider>()));
  gh.singleton<_i47.CategoryStringProvider>(_i48.ProdCategoryStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i49.CommentReplyStringProvider>(
      _i50.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i51.CommentStringProvider>(_i52.ProdCommentStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i53.FeedService>(
      _i54.ProdFeedService(postRepository: gh<_i55.PostRepository>()));
  gh.singleton<_i56.FeedStringProvider>(_i57.ProdFeedStringProvider(
      navigatorKey: gh<_i28.GlobalKey<_i28.NavigatorState>>()));
  gh.singleton<_i58.GoRouter>(routerModule.router(
    gh<_i21.GlobalKey<_i21.NavigatorState>>(),
    gh<_i59.AuthService>(),
  ));
  gh.singleton<_i60.HomeCoordinator>(
    _i61.ProdHomeCoordinator(goRouter: gh<_i58.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i62.HomeStore>(
      () => _i62.HomeStore(homeCoordinator: gh<_i60.HomeCoordinator>()));
  gh.singleton<_i59.MenuCoordinator>(
      _i63.ProdMenuCoordinator(goRouter: gh<_i58.GoRouter>()));
  gh.singleton<_i64.MenuStore>(
      _i64.MenuStore(menuCoordinator: gh<_i65.MenuCoordinator>()));
  gh.singleton<_i59.PostCoordinator>(
      _i66.ProdPostCoordinator(goRouter: gh<_i58.GoRouter>()));
  gh.singleton<_i59.RulesCoordinator>(
      _i67.ProdRulesCoordinator(goRouter: gh<_i58.GoRouter>()));
  gh.factory<_i68.RulesStore>(() => _i68.RulesStore(
        rulesService: gh<_i69.RulesService>(),
        rulesCoordinator: gh<_i70.RulesCoordinator>(),
      ));
  gh.singleton<_i59.SettingsCoordinator>(
      _i71.ProdSettingsCoordinator(goRouter: gh<_i58.GoRouter>()));
  gh.factory<_i72.SettingsStore>(() => _i72.SettingsStore(
        authService: gh<_i55.AuthService>(),
        settingsCoordinator: gh<_i73.SettingsCoordinator>(),
      ));
  gh.singleton<_i55.TwoInputsMapper<_i12.Comment, _i55.User, _i74.CommentVM>>(
      _i75.CommentMapper(
    dateFormatProvider: gh<_i55.FormattedDateProvider>(),
    beautifiedNumberProvider: gh<_i55.BeautifiedNumberProvider>(),
  ));
  gh.singleton<_i5.TwoInputsMapper<_i5.Post, _i5.User, _i36.PostVM>>(
      _i76.PostUserToPostVMMapper(
    formattedDateProvider: gh<_i36.FormattedDateProvider>(),
    beautifiedNumberProvider: gh<_i36.BeautifiedNumberProvider>(),
  ));
  gh.singleton<_i59.AuthCoordinator>(
    _i77.ProdAuthCoordinator(
      goRouter: gh<_i58.GoRouter>(),
      authService: gh<_i59.AuthService>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i78.AuthStore>(() => _i78.AuthStore(
        authService: gh<_i5.AuthService>(),
        authCoordinator: gh<_i79.AuthCoordinator>(),
        authStringProvider: gh<_i44.AuthStringProvider>(),
      ));
  gh.singleton<_i59.CommentCoordinator>(
      _i80.ProdCommentCoordinator(goRouter: gh<_i58.GoRouter>()));
  gh.factory<_i81.CommentReplyStore>(() => _i81.CommentReplyStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i82.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i49.CommentReplyStringProvider>(),
        commentMapper:
            gh<_i55.TwoInputsMapper<_i12.Comment, _i55.User, _i74.CommentVM>>(),
      ));
  gh.factory<_i83.CommentStore>(() => _i83.CommentStore(
        commentReplyStore: gh<_i81.CommentReplyStore>(),
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i82.CommentCoordinator>(),
        commentStringProvider: gh<_i51.CommentStringProvider>(),
        commentMapper:
            gh<_i55.TwoInputsMapper<_i12.Comment, _i55.User, _i74.CommentVM>>(),
      ));
  gh.singleton<_i59.FeedCoordinator>(
      _i84.ProdFeedCoordinator(goRouter: gh<_i58.GoRouter>()));
  gh.factory<_i85.FeedStore>(() => _i85.FeedStore(
        feedService: gh<_i53.FeedService>(),
        feedCoordinator: gh<_i86.FeedCoordinator>(),
        feedStringProvider: gh<_i56.FeedStringProvider>(),
        postMapper:
            gh<_i55.TwoInputsMapper<_i55.Post, _i55.User, _i55.PostVM>>(),
      ));
  gh.factory<_i87.PostCommentStore>(() => _i87.PostCommentStore(
        commentService: gh<_i12.CommentService>(),
        commentCoordinator: gh<_i82.CommentCoordinator>(),
        postCommentStringProvider: gh<_i26.PostCommentStringProvider>(),
        commentMapper:
            gh<_i55.TwoInputsMapper<_i12.Comment, _i55.User, _i74.CommentVM>>(),
      ));
  gh.factory<_i88.PostStore>(() => _i88.PostStore(
        postCommentStore: gh<_i87.PostCommentStore>(),
        postService: gh<_i30.PostService>(),
        postCoordinator: gh<_i89.PostCoordinator>(),
        postStringProvider: gh<_i32.PostStringProvider>(),
        postMapper:
            gh<_i55.TwoInputsMapper<_i55.Post, _i55.User, _i55.PostVM>>(),
      ));
  gh.singleton<_i90.CategoryStore>(_i90.CategoryStore(
    feedStore: gh<_i85.FeedStore>(),
    categoryService: gh<_i3.CategoryService>(),
    categoryStringProvider: gh<_i47.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$RouterModule extends _i91.RouterModule {}

class _$FirebaseModule extends _i92.FirebaseModule {}
