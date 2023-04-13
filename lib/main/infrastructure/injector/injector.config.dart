// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i18;
import 'package:dio/dio.dart' as _i20;
import 'package:flutter/material.dart' as _i26;
import 'package:flutter/widgets.dart' as _i63;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i23;
import 'package:freezed_annotation/freezed_annotation.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i137;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i144;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i151;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i154;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i61;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i72;
import 'package:itrust/features/auth/application/providers/rules_string_provider.dart'
    as _i74;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i143;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i150;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i153;
import 'package:itrust/features/auth/domain/dto/rules_response/rules_response.dart'
    as _i35;
import 'package:itrust/features/auth/domain/providers/rules_provider.dart'
    as _i121;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i123;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i62;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i73;
import 'package:itrust/features/auth/infrastructure/app_providers/rules_string_provider.dart'
    as _i75;
import 'package:itrust/features/auth/infrastructure/domain_providers/rules_provider/rules_provider.dart'
    as _i122;
import 'package:itrust/features/auth/infrastructure/json_converters/rules_response_json_converter.dart'
    as _i36;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i12;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i11;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i84;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i24;
import 'package:itrust/features/common/common.dart' as _i41;
import 'package:itrust/features/common/domain/domain.dart' as _i8;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i45;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i57;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i53;
import 'package:itrust/features/common/domain/dto/post_comment_response/post_comment_response.dart'
    as _i33;
import 'package:itrust/features/common/domain/dto/post_comments_response/post_comments_response.dart'
    as _i28;
import 'package:itrust/features/common/domain/dto/post_response/post_response.dart'
    as _i49;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i31;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i37;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i133;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i95;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/device_info_provider.dart'
    as _i127;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i114;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i116;
import 'package:itrust/features/common/domain/providers/post_provider.dart'
    as _i119;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i128;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i76;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i90;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i132;
import 'package:itrust/features/common/domain/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i125;
import 'package:itrust/features/common/domain/services/post_service.dart'
    as _i129;
import 'package:itrust/features/common/domain/services/user_service.dart'
    as _i130;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i98;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i25;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i85;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i94;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i96;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/device_info_service.dart'
    as _i19;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i115;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i117;
import 'package:itrust/features/common/infrastructure/domain_providers/post_provider/post_provider.dart'
    as _i120;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i124;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i77;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i91;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i46;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i58;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i54;
import 'package:itrust/features/common/infrastructure/json_converters/post_comment_response_json_converter.dart'
    as _i34;
import 'package:itrust/features/common/infrastructure/json_converters/post_comments_response_json_converter.dart'
    as _i29;
import 'package:itrust/features/common/infrastructure/json_converters/post_response_json_converter.dart'
    as _i50;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i42;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i32;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i38;
import 'package:itrust/features/common/infrastructure/other/media_url_creator.dart'
    as _i118;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i109;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i15;
import 'package:itrust/features/features.dart' as _i138;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i175;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i99;
import 'package:itrust/features/feed/application/providers/feed_string_repository.dart'
    as _i112;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i179;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i174;
import 'package:itrust/features/feed/domain/dto/get_feed_response/get_feed_response.dart'
    as _i43;
import 'package:itrust/features/feed/domain/dto/get_tags_response/get_tags_response.dart'
    as _i39;
import 'package:itrust/features/feed/domain/providers/feed_provider.dart'
    as _i110;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i134;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i136;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i100;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i113;
import 'package:itrust/features/feed/infrastructure/domain_providers/feed_provider/feed_provider.dart'
    as _i111;
import 'package:itrust/features/feed/infrastructure/json_converters/get_feed_response_json_converter.dart'
    as _i44;
import 'package:itrust/features/feed/infrastructure/json_converters/get_tags_response_json_converter.dart'
    as _i40;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i60;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i59;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i147;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i146;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i168;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i178;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i105;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i107;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i65;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i70;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i169;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i166;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i177;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i176;
import 'package:itrust/features/post/domain/domain.dart' as _i167;
import 'package:itrust/features/post/domain/providers/comment_provider.dart'
    as _i103;
import 'package:itrust/features/post/domain/services/comment_service.dart'
    as _i135;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i106;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i108;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i66;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i71;
import 'package:itrust/features/post/infrastructure/domain_providers/comment_provider/comment_provider.dart'
    as _i104;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i67;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i160;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i164;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i170;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i157;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i101;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i80;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i159;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i162;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i172;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i156;
import 'package:itrust/features/settings/domain/domain.dart' as _i163;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i47;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i51;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i92;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i131;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i102;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i81;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i93;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i48;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i52;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i79;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i88;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i89;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i139;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i141;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i158;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i161;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i165;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i171;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i173;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i140;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i142;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i145;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i148;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i149;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i152;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i155;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i56;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i10;
import 'package:itrust/repositories/implementations/comment_repository.dart'
    as _i14;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i22;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i69;
import 'package:itrust/repositories/implementations/staff_user_repository.dart'
    as _i83;
import 'package:itrust/repositories/implementations/token_repository.dart'
    as _i87;
import 'package:itrust/repositories/interfaces/chat_repository.dart' as _i9;
import 'package:itrust/repositories/interfaces/comment_repository.dart' as _i13;
import 'package:itrust/repositories/interfaces/end_user_repository.dart'
    as _i21;
import 'package:itrust/repositories/interfaces/interfaces.dart' as _i126;
import 'package:itrust/repositories/interfaces/post_repository.dart' as _i68;
import 'package:itrust/repositories/interfaces/staff_user_repository.dart'
    as _i82;
import 'package:itrust/repositories/interfaces/token_repository.dart' as _i86;
import 'package:itrust/utils/server_settings.dart' as _i78;
import 'package:itrust/utils/utils.dart' as _i97;
import 'package:json_annotation/json_annotation.dart' as _i30;
import 'package:mapster/mapster.dart' as _i64;
import 'package:problem_details/problem_details.dart' as _i55;

import '../../../env/env_module.dart' as _i180;
import '../../../features/common/infrastructure/third_party/mapster_module.dart'
    as _i181;
import '../router/router.dart' as _i182;
import '../third_party/device_info_plus_module.dart' as _i183;
import '../third_party/dio_module.dart' as _i184;
import '../third_party/secure_storage_module.dart' as _i185;

const String _dev = 'dev';

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
  gh.singleton<_i6.ChatListService>(_i6.ChatListService());
  gh.singleton<_i7.ChatListStore>(
      _i7.ChatListStore(chatListService: gh<_i8.ChatListService>()));
  gh.lazySingleton<_i9.ChatRepository>(
    () => _i10.DevChatRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i11.ChatService>(_i11.ChatService());
  gh.factory<_i12.ChatStore>(
      () => _i12.ChatStore(chatService: gh<_i11.ChatService>()));
  gh.singleton<_i13.CommentRepository>(
    _i14.DevCommentRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i15.ConnectionStore>(() => _i15.ConnectionStore());
  gh.singleton<_i16.DateTimeProvider>(_i17.ProdDateTimeProvider());
  gh.singleton<_i18.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i8.DeviceInfoProvider>(_i19.ProdDeviceInfoProvider(
      deviceInfoPlugin: gh<_i18.DeviceInfoPlugin>()));
  gh.singleton<_i20.Dio>(dioModule.dio);
  await gh.singletonAsync<_i21.EndUserRepository>(
    () {
      final i = _i22.ProdEndUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i23.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i24.FormattedDateProvider>(_i25.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i16.DateTimeProvider>()));
  gh.singleton<_i26.GlobalKey<_i26.NavigatorState>>(routerModule.rootKey);
  gh.singleton<
          _i27.JsonConverter<_i28.PostCommentsResponse, Map<String, Object?>>>(
      _i29.PostCommentsResponseJsonConverter());
  gh.singleton<_i30.JsonConverter<_i31.RegisterResponse, Map<String, Object?>>>(
      _i32.RegisterResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i33.PostCommentResponse, Map<String, Object?>>>(
      _i34.PostCommentResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i35.RulesResponse, Map<String, Object?>>>(
      _i36.RulesResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i37.VerifyTokenResponse, Map<String, Object?>>>(
      _i38.VerifyTokenResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i39.GetTagsResponse, Map<String, Object?>>>(
      _i40.GetTagsResponseJsonConverter());
  gh.singleton<
          _i30.JsonConverter<_i41.RefreshTokenResponse, Map<String, Object?>>>(
      _i42.RefreshTokenResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i43.GetFeedResponse, Map<String, Object?>>>(
      _i44.GetFeedResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i45.GetUserByIDResponse, Map<String, Object?>>>(
      _i46.GetUserByIDResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i47.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i48.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i49.PostResponse, Map<String, Object?>>>(
      _i50.PostResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i51.GetDevicesResponse, Map<String, Object?>>>(
      _i52.GetDevicesResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i53.LogOutResponse, Map<String, Object?>>>(
      _i54.LogOutResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i55.ProblemDetails, Map<String, Object?>>>(
      _i56.ProblemDetailsJsonConverter());
  gh.singleton<_i27.JsonConverter<_i57.LogInResponse, Map<String, Object?>>>(
      _i58.LogInResponseJsonConverter());
  gh.singleton<_i59.LockService>(_i59.LockService());
  gh.factory<_i60.LockStore>(
      () => _i60.LockStore(lockService: gh<_i59.LockService>()));
  gh.singleton<_i61.LogInStringProvider>(_i62.ProdLogInStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i64.Mapster>(mapsterModule.mapster);
  gh.singleton<_i65.PostCommentStringProvider>(
      _i66.ProdPostCommentStringProvider(
          navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i67.PostMapsterRegistrar>(
      _i67.PostMapsterRegistrar(gh<_i64.Mapster>())..register());
  gh.singleton<_i68.PostRepository>(
    _i69.DevPostRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i70.PostStringProvider>(_i71.ProdPostStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i72.RegisterStringProvider>(_i73.ProdRegisterStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i74.RulesStringProvider>(_i75.ProdRulesStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  await gh.singletonAsync<_i76.ServerExceptionProvider>(
    () => _i77.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i78.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i79.SettingsMapsterRegistrar>(
      _i79.SettingsMapsterRegistrar(gh<_i64.Mapster>())..register());
  gh.singleton<_i80.SettingsStringProvider>(_i81.ProdSettingsStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i82.StaffUserRepository>(
    _i83.DevStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i84.SuffixNumberProvider>(_i85.ProdSuffixNumberProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i86.TokenRepository>(_i87.ProdTokenRepository(
    dio: gh<_i20.Dio>(),
    secureStorage: gh<_i23.FlutterSecureStorage>(),
  ));
  gh.singleton<_i88.UserInfoStringProvider>(_i89.ProdUserInfoStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i90.UserProvider>(_i91.ProdUserProvider(
    gh<_i20.Dio>(),
    gh<_i78.ServerSettings>(),
  ));
  gh.singleton<_i92.AccountProvider>(_i93.ProdAccountProvider(
    gh<_i20.Dio>(),
    gh<_i78.ServerSettings>(),
  ));
  gh.singleton<_i8.AuthExceptionProvider>(
      _i94.ProdAuthExceptionProvider(gh<_i8.ServerExceptionProvider>()));
  gh.singleton<_i95.AuthProvider>(_i96.ProdAuthProvider(
    gh<_i20.Dio>(),
    gh<_i97.ServerSettings>(),
  ));
  gh.singleton<_i84.BeautifiedNumberProvider>(_i98.ProdBeautifiedNumberProvider(
      suffixNumberProvider: gh<_i84.SuffixNumberProvider>()));
  gh.singleton<_i99.CategoryStringProvider>(_i100.ProdCategoryStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i101.ChangePersonalInfoStringProvider>(
      _i102.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i103.CommentProvider>(_i104.ProdCommentProvider(
    gh<_i20.Dio>(),
    gh<_i78.ServerSettings>(),
  ));
  gh.singleton<_i105.CommentReplyStringProvider>(
      _i106.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i107.CommentStringProvider>(_i108.ProdCommentStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i109.CommonMapsterRegistrar>(
      _i109.CommonMapsterRegistrar(gh<_i64.Mapster>())..register());
  gh.singleton<_i110.FeedProvider>(_i111.ProdFeedProvider(
    gh<_i20.Dio>(),
    gh<_i78.ServerSettings>(),
  ));
  gh.singleton<_i112.FeedStringProvider>(_i113.ProdFeedStringProvider(
      navigatorKey: gh<_i63.GlobalKey<_i63.NavigatorState>>()));
  gh.singleton<_i114.KeepFreshTokenExceptionProvider>(
      _i115.ProdKeepFreshTokenExceptionProvider(
          gh<_i76.ServerExceptionProvider>()));
  gh.singleton<_i116.KeepFreshTokenProvider>(_i117.ProdKeepFreshTokenProvider(
    gh<_i20.Dio>(),
    gh<_i78.ServerSettings>(),
  ));
  gh.singleton<_i118.MediaUrlCreator>(
      _i118.MediaUrlCreator(serverSettings: gh<_i78.ServerSettings>()));
  gh.singleton<_i119.PostProvider>(_i120.ProdPostProvider(
    gh<_i20.Dio>(),
    gh<_i78.ServerSettings>(),
  ));
  gh.singleton<_i121.RulesProvider>(_i122.ProdRulesProvider(
    gh<_i20.Dio>(),
    gh<_i78.ServerSettings>(),
  ));
  gh.singleton<_i123.RulesService>(
      _i123.RulesService(rulesProvider: gh<_i121.RulesProvider>()));
  gh.singleton<_i8.ServerAvailabilityProvider>(
      _i124.ProdServerAvailabilityProvider(gh<_i78.ServerSettings>()));
  gh.singleton<_i125.KeepFreshTokenService>(_i125.KeepFreshTokenService(
    tokenService: gh<_i126.TokenRepository>(),
    keepFreshTokenProvider: gh<_i116.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoProvider: gh<_i127.DeviceInfoProvider>(),
    keepFreshTokenExceptionProvider:
        gh<_i114.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i128.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i126.EndUserRepository>(),
  ));
  gh.singleton<_i129.PostService>(_i129.PostService(
    keepFreshTokenService: gh<_i125.KeepFreshTokenService>(),
    postProvider: gh<_i119.PostProvider>(),
    postRepository: gh<_i126.PostRepository>(),
    commentRepository: gh<_i126.CommentRepository>(),
  ));
  gh.singleton<_i130.UserService>(_i130.UserService(
    keepFreshTokenService: gh<_i125.KeepFreshTokenService>(),
    userProvider: gh<_i90.UserProvider>(),
    endUserRepository: gh<_i126.EndUserRepository>(),
    staffUserRepository: gh<_i126.StaffUserRepository>(),
  ));
  gh.singleton<_i131.AccountService>(
    _i131.AccountService(
      authStatusProvider: gh<_i8.AuthStatusProvider>(),
      userProvider: gh<_i8.UserProvider>(),
      accountProvider: gh<_i92.AccountProvider>(),
      keepFreshTokenService: gh<_i8.KeepFreshTokenService>(),
      endUserRepository: gh<_i126.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  await gh.singletonAsync<_i132.AuthService>(
    () {
      final i = _i132.AuthService(
        serverAvailabilityProvider: gh<_i128.ServerAvailabilityProvider>(),
        authProvider: gh<_i95.AuthProvider>(),
        tokenService: gh<_i126.TokenRepository>(),
        endUserRepository: gh<_i126.EndUserRepository>(),
        authExceptionProvider: gh<_i133.AuthExceptionProvider>(),
        deviceInfoProvider: gh<_i127.DeviceInfoProvider>(),
        keepFreshTokenService: gh<_i125.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i134.CategoryService>(_i134.CategoryService(
    keepFreshTokenService: gh<_i125.KeepFreshTokenService>(),
    feedProvider: gh<_i110.FeedProvider>(),
  ));
  gh.singleton<_i135.CommentService>(_i135.CommentService(
    keepFreshTokenService: gh<_i41.KeepFreshTokenService>(),
    commentProvider: gh<_i103.CommentProvider>(),
    commentRepository: gh<_i126.CommentRepository>(),
  ));
  gh.singleton<_i136.FeedService>(_i136.FeedService(
    keepFreshTokenService: gh<_i41.KeepFreshTokenService>(),
    feedProvider: gh<_i110.FeedProvider>(),
    postRepository: gh<_i126.PostRepository>(),
  ));
  gh.singleton<_i137.GoRouter>(routerModule.router(
    gh<_i26.GlobalKey<_i26.NavigatorState>>(),
    gh<_i138.AuthService>(),
  ));
  gh.singleton<_i139.HomeCoordinator>(
    _i140.ProdHomeCoordinator(goRouter: gh<_i137.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i141.HomeStore>(
      () => _i141.HomeStore(homeCoordinator: gh<_i139.HomeCoordinator>()));
  gh.singleton<_i138.LogInCoordinator>(
    _i142.ProdLogInCoordinator(
      goRouter: gh<_i137.GoRouter>(),
      authStatusProvider: gh<_i138.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i143.LogInStore>(() => _i143.LogInStore(
        authService: gh<_i8.AuthService>(),
        logInCoordinator: gh<_i144.LogInCoordinator>(),
        logInStringProvider: gh<_i61.LogInStringProvider>(),
      ));
  gh.singleton<_i138.MenuCoordinator>(
      _i145.ProdMenuCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.singleton<_i146.MenuStore>(
      _i146.MenuStore(menuCoordinator: gh<_i147.MenuCoordinator>()));
  gh.singleton<_i138.PostCoordinator>(
      _i148.ProdPostCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.singleton<_i138.RegisterCoordinator>(
    _i149.ProdRegisterCoordinator(
      goRouter: gh<_i137.GoRouter>(),
      authStatusProvider: gh<_i138.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i150.RegisterStore>(() => _i150.RegisterStore(
        authService: gh<_i8.AuthService>(),
        registerCoordinator: gh<_i151.RegisterCoordinator>(),
        registerStringProvider: gh<_i72.RegisterStringProvider>(),
      ));
  gh.singleton<_i138.RulesCoordinator>(
      _i152.ProdRulesCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.factory<_i153.RulesStore>(() => _i153.RulesStore(
        rulesService: gh<_i123.RulesService>(),
        rulesCoordinator: gh<_i154.RulesCoordinator>(),
        rulesStringProvider: gh<_i74.RulesStringProvider>(),
      ));
  gh.singleton<_i138.SettingsCoordinator>(
      _i155.ProdSettingsCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.singleton<_i156.SettingsStore>(_i156.SettingsStore(
    authService: gh<_i41.AuthService>(),
    settingsCoordinator: gh<_i157.SettingsCoordinator>(),
    settingsStringProvider: gh<_i80.SettingsStringProvider>(),
    accountService: gh<_i131.AccountService>(),
    mapster: gh<_i64.Mapster>(),
  ));
  gh.singleton<_i138.AccountSettingsCoordinator>(
      _i158.ProdAccountSettingsCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.factory<_i159.AccountSettingsStore>(() => _i159.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i160.AccountSettingsCoordinator>()));
  gh.singleton<_i138.ChangePersonalInfoCoordinator>(
      _i161.ProdChangePersonalInfoCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.factory<_i162.ChangePersonalInfoStore>(() => _i162.ChangePersonalInfoStore(
        accountService: gh<_i163.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i164.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i101.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i138.CommentCoordinator>(
      _i165.ProdCommentCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.factory<_i166.CommentReplyStore>(() => _i166.CommentReplyStore(
        commentService: gh<_i167.CommentService>(),
        commentCoordinator: gh<_i168.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i105.CommentReplyStringProvider>(),
        mapster: gh<_i64.Mapster>(),
      ));
  gh.factory<_i169.CommentStore>(() => _i169.CommentStore(
        commentReplyStore: gh<_i166.CommentReplyStore>(),
        commentService: gh<_i167.CommentService>(),
        commentCoordinator: gh<_i168.CommentCoordinator>(),
        commentStringProvider: gh<_i107.CommentStringProvider>(),
        mapster: gh<_i64.Mapster>(),
      ));
  gh.singleton<_i170.DevicesCoordinator>(
      _i171.ProdDevicesCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.singleton<_i172.DevicesStore>(_i172.DevicesStore(
    devicesCoordinator: gh<_i170.DevicesCoordinator>(),
    accountService: gh<_i131.AccountService>(),
    mapster: gh<_i64.Mapster>(),
  ));
  gh.singleton<_i138.FeedCoordinator>(
      _i173.ProdFeedCoordinator(goRouter: gh<_i137.GoRouter>()));
  gh.factory<_i174.FeedStore>(() => _i174.FeedStore(
        feedService: gh<_i136.FeedService>(),
        userService: gh<_i8.UserService>(),
        postService: gh<_i8.PostService>(),
        feedCoordinator: gh<_i175.FeedCoordinator>(),
        feedStringProvider: gh<_i112.FeedStringProvider>(),
        mapster: gh<_i64.Mapster>(),
      ));
  gh.factory<_i176.PostCommentStore>(() => _i176.PostCommentStore(
        commentService: gh<_i167.CommentService>(),
        userService: gh<_i41.UserService>(),
        commentCoordinator: gh<_i168.CommentCoordinator>(),
        postCommentStringProvider: gh<_i65.PostCommentStringProvider>(),
        mapster: gh<_i64.Mapster>(),
      ));
  gh.factory<_i177.PostStore>(() => _i177.PostStore(
        postCommentStore: gh<_i176.PostCommentStore>(),
        postService: gh<_i41.PostService>(),
        userService: gh<_i41.UserService>(),
        postCoordinator: gh<_i178.PostCoordinator>(),
        postStringProvider: gh<_i70.PostStringProvider>(),
        mapster: gh<_i64.Mapster>(),
      ));
  gh.singleton<_i179.CategoryStore>(_i179.CategoryStore(
    feedStore: gh<_i174.FeedStore>(),
    categoryService: gh<_i134.CategoryService>(),
    categoryStringProvider: gh<_i99.CategoryStringProvider>(),
  ));
  return getIt;
}

class _$EnvModule extends _i180.EnvModule {}

class _$MapsterModule extends _i181.MapsterModule {}

class _$RouterModule extends _i182.RouterModule {}

class _$DeviceInfoPlusModule extends _i183.DeviceInfoPlusModule {}

class _$DioModule extends _i184.DioModule {}

class _$SecureStorageModule extends _i185.SecureStorageModule {}
