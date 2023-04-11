// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i21;
import 'package:dio/dio.dart' as _i23;
import 'package:flutter/material.dart' as _i29;
import 'package:flutter/widgets.dart' as _i57;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i26;
import 'package:freezed_annotation/freezed_annotation.dart' as _i30;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i122;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i129;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i136;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i140;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i55;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i68;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i128;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i135;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i138;
import 'package:itrust/features/auth/auth.dart' as _i70;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i139;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i56;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i69;
import 'package:itrust/features/auth/infrastructure/services/rules_service.dart'
    as _i71;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i15;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i13;
import 'package:itrust/features/chat/infrastructure/services/chat_service.dart'
    as _i14;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i10;
import 'package:itrust/features/common/application/application.dart' as _i78;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i19;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i27;
import 'package:itrust/features/common/common.dart' as _i38;
import 'package:itrust/features/common/domain/domain.dart' as _i8;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i35;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i50;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i31;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i42;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i40;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i120;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i90;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i107;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i109;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i116;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i72;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i85;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i119;
import 'package:itrust/features/common/domain/services/device_info_service.dart'
    as _i115;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i113;
import 'package:itrust/features/common/domain/services/token_service.dart'
    as _i114;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i93;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i20;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i28;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i79;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i89;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i91;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i108;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i110;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i112;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i73;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i86;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i36;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i51;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i32;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i39;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i43;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i41;
import 'package:itrust/features/common/infrastructure/other/media_url_creator.dart'
    as _i111;
import 'package:itrust/features/common/infrastructure/services/chat_list_service.dart'
    as _i9;
import 'package:itrust/features/common/infrastructure/services/device_info_service.dart'
    as _i22;
import 'package:itrust/features/common/infrastructure/services/token_service.dart'
    as _i80;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i102;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i18;
import 'package:itrust/features/features.dart' as _i123;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i160;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i94;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i105;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i164;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i159;
import 'package:itrust/features/feed/domain/dto/get_feed_response/get_feed_response.dart'
    as _i48;
import 'package:itrust/features/feed/domain/providers/feed_provider.dart'
    as _i103;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i6;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i121;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i95;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i106;
import 'package:itrust/features/feed/infrastructure/domain_providers/feed_provider/feed_provider.dart'
    as _i104;
import 'package:itrust/features/feed/infrastructure/json_converters/get_feed_response_json_converter.dart'
    as _i49;
import 'package:itrust/features/feed/infrastructure/services/category_service.dart'
    as _i7;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i54;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i52;
import 'package:itrust/features/lock/infrastructure/services/lock_service.dart'
    as _i53;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i132;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i131;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i153;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i163;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i98;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i100;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i59;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i66;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i154;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i152;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i162;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i161;
import 'package:itrust/features/post/domain/domain.dart' as _i16;
import 'package:itrust/features/post/domain/services/post_service.dart' as _i64;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i99;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i101;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i60;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i67;
import 'package:itrust/features/post/infrastructure/services/comment_service.dart'
    as _i17;
import 'package:itrust/features/post/infrastructure/services/post_service.dart'
    as _i65;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i61;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i146;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i150;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i155;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i143;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i96;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i76;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i145;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i148;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i157;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i142;
import 'package:itrust/features/settings/domain/domain.dart' as _i149;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i44;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i46;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i87;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i118;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i97;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i77;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i88;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i45;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i47;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i75;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i83;
import 'package:itrust/features/user_wall/domain/services/user_info_service.dart'
    as _i81;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i84;
import 'package:itrust/features/user_wall/infrastructure/services/user_info_service.dart'
    as _i82;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i124;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i126;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i144;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i147;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i151;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i156;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i158;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i125;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i127;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i130;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i133;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i134;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i137;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i141;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i34;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i12;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i25;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i63;
import 'package:itrust/repositories/interfaces/chat_repository.dart' as _i11;
import 'package:itrust/repositories/interfaces/end_user_repository.dart'
    as _i24;
import 'package:itrust/repositories/interfaces/interfaces.dart' as _i117;
import 'package:itrust/repositories/interfaces/post_repository.dart' as _i62;
import 'package:itrust/utils/server_settings.dart' as _i74;
import 'package:itrust/utils/utils.dart' as _i92;
import 'package:json_annotation/json_annotation.dart' as _i37;
import 'package:mapster/mapster.dart' as _i58;
import 'package:problem_details/problem_details.dart' as _i33;

import '../../../env/env_module.dart' as _i165;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i166;
import '../router/router.dart' as _i167;
import '../third_party/device_info_plus_module.dart' as _i168;
import '../third_party/dio_module.dart' as _i169;
import '../third_party/secure_storage_module.dart' as _i170;

const String _test = 'test';

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
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
  final deviceInfoPlusModule = _$DeviceInfoPlusModule();
  final dioModule = _$DioModule();
  final secureStorageModule = _$SecureStorageModule();
  final routerModule = _$RouterModule();
  final mapsterModule = _$MapsterModule();
  final envModule = _$EnvModule();
  await gh.singletonAsync<_i3.HiveModule>(
    () {
      final i = _i3.HiveModule();
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i4.AuthStatusProvider>(
    _i5.ProdAuthStatusProvider(),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i6.CategoryService>(
    _i7.TestCategoryService(),
    registerFor: {_test},
  );
  gh.lazySingleton<_i8.ChatListService>(
    () => _i9.TestChatListService()..init(),
    registerFor: {_test},
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i10.ChatListStore>(
      _i10.ChatListStore(chatListService: gh<_i8.ChatListService>()));
  gh.lazySingleton<_i11.ChatRepository>(
    () => _i12.TestChatRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i13.ChatService>(
    _i14.TestChatService(),
    registerFor: {_test},
  );
  gh.factory<_i15.ChatStore>(
      () => _i15.ChatStore(chatService: gh<_i13.ChatService>()));
  gh.singleton<_i16.CommentService>(
    _i17.TestCommentService(),
    registerFor: {_test},
  );
  gh.factory<_i18.ConnectionStore>(() => _i18.ConnectionStore());
  gh.singleton<_i19.DateTimeProvider>(_i20.ProdDateTimeProvider());
  gh.singleton<_i21.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i8.DeviceInfoService>(_i22.ProdDeviceInfoService(
      deviceInfoPlugin: gh<_i21.DeviceInfoPlugin>()));
  gh.singleton<_i23.Dio>(dioModule.dio);
  await gh.singletonAsync<_i24.EndUserRepository>(
    () {
      final i = _i25.ProdEndUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i26.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i27.FormattedDateProvider>(_i28.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i19.DateTimeProvider>()));
  gh.singleton<_i29.GlobalKey<_i29.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i30.JsonConverter<_i31.LogOutResponse, Map<String, Object?>>>(
      _i32.LogOutResponseJsonConverter());
  gh.singleton<_i30.JsonConverter<_i33.ProblemDetails, Map<String, Object?>>>(
      _i34.ProblemDetailsJsonConverter());
  gh.singleton<
          _i30.JsonConverter<_i35.GetUserByIDResponse, Map<String, Object?>>>(
      _i36.GetUserByIDResponseJsonConverter());
  gh.singleton<
          _i37.JsonConverter<_i38.RefreshTokenResponse, Map<String, Object?>>>(
      _i39.RefreshTokenResponseJsonConverter());
  gh.singleton<
          _i30.JsonConverter<_i40.VerifyTokenResponse, Map<String, Object?>>>(
      _i41.VerifyTokenResponseJsonConverter());
  gh.singleton<_i37.JsonConverter<_i42.RegisterResponse, Map<String, Object?>>>(
      _i43.RegisterResponseJsonConverter());
  gh.singleton<
          _i30.JsonConverter<_i44.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i45.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<
          _i30.JsonConverter<_i46.GetDevicesResponse, Map<String, Object?>>>(
      _i47.GetDevicesResponseJsonConverter());
  gh.singleton<_i30.JsonConverter<_i48.GetFeedResponse, Map<String, Object?>>>(
      _i49.GetFeedResponseJsonConverter());
  gh.singleton<_i30.JsonConverter<_i50.LogInResponse, Map<String, Object?>>>(
      _i51.LogInResponseJsonConverter());
  gh.singleton<_i52.LockService>(
    _i53.TestLockService(),
    registerFor: {_test},
  );
  gh.factory<_i54.LockStore>(
      () => _i54.LockStore(lockService: gh<_i52.LockService>()));
  gh.singleton<_i55.LogInStringProvider>(_i56.ProdLogInStringProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i58.Mapster>(mapsterModule.mapster);
  gh.singleton<_i59.PostCommentStringProvider>(
      _i60.ProdPostCommentStringProvider(
          navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i61.PostMapsterRegistrar>(
      _i61.PostMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i62.PostRepository>(
    _i63.TestPostRepository(),
    registerFor: {_test},
  );
  gh.singleton<_i64.PostService>(
    _i65.TestPostService(),
    registerFor: {_test},
  );
  gh.singleton<_i66.PostStringProvider>(_i67.ProdPostStringProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i68.RegisterStringProvider>(_i69.ProdRegisterStringProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i70.RulesService>(
    _i71.TestRulesService(),
    registerFor: {_test},
  );
  await gh.singletonAsync<_i72.ServerExceptionProvider>(
    () => _i73.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i74.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i75.SettingsMapsterRegistrar>(
      _i75.SettingsMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i76.SettingsStringProvider>(_i77.ProdSettingsStringProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i78.SuffixNumberProvider>(_i79.ProdSuffixNumberProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i8.TokenService>(_i80.ProdTokenService(
    dio: gh<_i23.Dio>(),
    secureStorage: gh<_i26.FlutterSecureStorage>(),
  ));
  gh.singleton<_i81.UserInfoService>(_i82.TestUserService());
  gh.singleton<_i83.UserInfoStringProvider>(_i84.ProdUserInfoStringProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i85.UserProvider>(_i86.ProdUserProvider(
    gh<_i23.Dio>(),
    gh<_i74.ServerSettings>(),
  ));
  gh.singleton<_i87.AccountProvider>(_i88.ProdAccountProvider(
    gh<_i23.Dio>(),
    gh<_i74.ServerSettings>(),
  ));
  gh.singleton<_i8.AuthExceptionProvider>(
      _i89.ProdAuthExceptionProvider(gh<_i8.ServerExceptionProvider>()));
  gh.singleton<_i90.AuthProvider>(_i91.ProdAuthProvider(
    gh<_i23.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i78.BeautifiedNumberProvider>(_i93.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i78.SuffixNumberProvider>()));
  gh.singleton<_i94.CategoryStringProvider>(_i95.ProdCategoryStringProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i96.ChangePersonalInfoStringProvider>(
      _i97.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i98.CommentReplyStringProvider>(
      _i99.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i100.CommentStringProvider>(_i101.ProdCommentStringProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i102.CommonMapsterRegistrar>(
      _i102.CommonMapsterRegistrar(gh<_i58.Mapster>())..register());
  gh.singleton<_i103.FeedProvider>(_i104.ProdFeedProvider(
    gh<_i23.Dio>(),
    gh<_i74.ServerSettings>(),
  ));
  gh.singleton<_i105.FeedStringProvider>(_i106.ProdFeedStringProvider(
      navigatorKey: gh<_i57.GlobalKey<_i57.NavigatorState>>()));
  gh.singleton<_i107.KeepFreshTokenExceptionProvider>(
      _i108.ProdKeepFreshTokenExceptionProvider(
          gh<_i72.ServerExceptionProvider>()));
  gh.singleton<_i109.KeepFreshTokenProvider>(_i110.ProdKeepFreshTokenProvider(
    gh<_i23.Dio>(),
    gh<_i74.ServerSettings>(),
  ));
  gh.singleton<_i111.MediaUrlCreator>(
      _i111.MediaUrlCreator(serverSettings: gh<_i74.ServerSettings>()));
  gh.singleton<_i8.ServerAvailabilityProvider>(
      _i112.ProdServerAvailabilityProvider(gh<_i74.ServerSettings>()));
  gh.singleton<_i113.KeepFreshTokenService>(_i113.KeepFreshTokenService(
    tokenService: gh<_i114.TokenService>(),
    keepFreshTokenProvider: gh<_i109.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoService: gh<_i115.DeviceInfoService>(),
    keepFreshTokenExceptionProvider:
        gh<_i107.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i116.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i117.EndUserRepository>(),
  ));
  gh.singleton<_i118.AccountService>(
    _i118.AccountService(
      authStatusProvider: gh<_i8.AuthStatusProvider>(),
      userProvider: gh<_i8.UserProvider>(),
      accountProvider: gh<_i87.AccountProvider>(),
      keepFreshTokenService: gh<_i8.KeepFreshTokenService>(),
      endUserRepository: gh<_i117.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i119.AuthService>(
    () {
      final i = _i119.AuthService(
        serverAvailabilityProvider: gh<_i116.ServerAvailabilityProvider>(),
        authProvider: gh<_i90.AuthProvider>(),
        tokenService: gh<_i114.TokenService>(),
        endUserRepository: gh<_i117.EndUserRepository>(),
        authExceptionProvider: gh<_i120.AuthExceptionProvider>(),
        deviceInfoService: gh<_i115.DeviceInfoService>(),
        keepFreshTokenService: gh<_i113.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i121.FeedService>(_i121.FeedService(
    keepFreshTokenService: gh<_i38.KeepFreshTokenService>(),
    feedProvider: gh<_i103.FeedProvider>(),
  ));
  gh.singleton<_i122.GoRouter>(routerModule.router(
    gh<_i29.GlobalKey<_i29.NavigatorState>>(),
    gh<_i123.AuthService>(),
  ));
  gh.singleton<_i124.HomeCoordinator>(
    _i125.ProdHomeCoordinator(goRouter: gh<_i122.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i126.HomeStore>(
      () => _i126.HomeStore(homeCoordinator: gh<_i124.HomeCoordinator>()));
  gh.singleton<_i123.LogInCoordinator>(
    _i127.ProdLogInCoordinator(
      goRouter: gh<_i122.GoRouter>(),
      authStatusProvider: gh<_i123.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i128.LogInStore>(() => _i128.LogInStore(
        authService: gh<_i8.AuthService>(),
        logInCoordinator: gh<_i129.LogInCoordinator>(),
        logInStringProvider: gh<_i55.LogInStringProvider>(),
      ));
  gh.singleton<_i123.MenuCoordinator>(
      _i130.ProdMenuCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.singleton<_i131.MenuStore>(
      _i131.MenuStore(menuCoordinator: gh<_i132.MenuCoordinator>()));
  gh.singleton<_i123.PostCoordinator>(
      _i133.ProdPostCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.singleton<_i123.RegisterCoordinator>(
    _i134.ProdRegisterCoordinator(
      goRouter: gh<_i122.GoRouter>(),
      authStatusProvider: gh<_i123.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i135.RegisterStore>(() => _i135.RegisterStore(
        authService: gh<_i8.AuthService>(),
        registerCoordinator: gh<_i136.RegisterCoordinator>(),
        registerStringProvider: gh<_i68.RegisterStringProvider>(),
      ));
  gh.singleton<_i123.RulesCoordinator>(
      _i137.ProdRulesCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.factory<_i138.RulesStore>(() => _i138.RulesStore(
        rulesService: gh<_i139.RulesService>(),
        rulesCoordinator: gh<_i140.RulesCoordinator>(),
      ));
  gh.singleton<_i123.SettingsCoordinator>(
      _i141.ProdSettingsCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.singleton<_i142.SettingsStore>(_i142.SettingsStore(
    authService: gh<_i38.AuthService>(),
    settingsCoordinator: gh<_i143.SettingsCoordinator>(),
    settingsStringProvider: gh<_i76.SettingsStringProvider>(),
    accountService: gh<_i118.AccountService>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i123.AccountSettingsCoordinator>(
      _i144.ProdAccountSettingsCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.factory<_i145.AccountSettingsStore>(() => _i145.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i146.AccountSettingsCoordinator>()));
  gh.singleton<_i123.ChangePersonalInfoCoordinator>(
      _i147.ProdChangePersonalInfoCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.factory<_i148.ChangePersonalInfoStore>(() => _i148.ChangePersonalInfoStore(
        accountService: gh<_i149.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i150.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i96.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i123.CommentCoordinator>(
      _i151.ProdCommentCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.factory<_i152.CommentReplyStore>(() => _i152.CommentReplyStore(
        commentService: gh<_i16.CommentService>(),
        commentCoordinator: gh<_i153.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i98.CommentReplyStringProvider>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.factory<_i154.CommentStore>(() => _i154.CommentStore(
        commentReplyStore: gh<_i152.CommentReplyStore>(),
        commentService: gh<_i16.CommentService>(),
        commentCoordinator: gh<_i153.CommentCoordinator>(),
        commentStringProvider: gh<_i100.CommentStringProvider>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i155.DevicesCoordinator>(
      _i156.ProdDevicesCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.singleton<_i157.DevicesStore>(_i157.DevicesStore(
    devicesCoordinator: gh<_i155.DevicesCoordinator>(),
    accountService: gh<_i118.AccountService>(),
    mapster: gh<_i58.Mapster>(),
  ));
  gh.singleton<_i123.FeedCoordinator>(
      _i158.ProdFeedCoordinator(goRouter: gh<_i122.GoRouter>()));
  gh.factory<_i159.FeedStore>(() => _i159.FeedStore(
        feedService: gh<_i121.FeedService>(),
        feedCoordinator: gh<_i160.FeedCoordinator>(),
        feedStringProvider: gh<_i105.FeedStringProvider>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.factory<_i161.PostCommentStore>(() => _i161.PostCommentStore(
        commentService: gh<_i16.CommentService>(),
        commentCoordinator: gh<_i153.CommentCoordinator>(),
        postCommentStringProvider: gh<_i59.PostCommentStringProvider>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.factory<_i162.PostStore>(() => _i162.PostStore(
        postCommentStore: gh<_i161.PostCommentStore>(),
        postService: gh<_i64.PostService>(),
        postCoordinator: gh<_i163.PostCoordinator>(),
        postStringProvider: gh<_i66.PostStringProvider>(),
        mapster: gh<_i58.Mapster>(),
      ));
  gh.singleton<_i164.CategoryStore>(_i164.CategoryStore(
    feedStore: gh<_i159.FeedStore>(),
    categoryService: gh<_i6.CategoryService>(),
    categoryStringProvider: gh<_i94.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i165.EnvModule {}

class _$MapsterModule extends _i166.MapsterModule {}

class _$RouterModule extends _i167.RouterModule {}

class _$DeviceInfoPlusModule extends _i168.DeviceInfoPlusModule {}

class _$DioModule extends _i169.DioModule {}

class _$SecureStorageModule extends _i170.SecureStorageModule {}
