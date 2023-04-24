// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i18;
import 'package:dio/dio.dart' as _i20;
import 'package:flutter/material.dart' as _i26;
import 'package:flutter/widgets.dart' as _i73;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i23;
import 'package:freezed_annotation/freezed_annotation.dart' as _i27;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i166;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i174;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i184;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i187;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i71;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i86;
import 'package:itrust/features/auth/application/providers/rules_string_provider.dart'
    as _i88;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i173;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i183;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i186;
import 'package:itrust/features/auth/domain/dto/rules_response/rules_response.dart'
    as _i44;
import 'package:itrust/features/auth/domain/providers/rules_provider.dart'
    as _i145;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i147;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i72;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i87;
import 'package:itrust/features/auth/infrastructure/app_providers/rules_string_provider.dart'
    as _i89;
import 'package:itrust/features/auth/infrastructure/domain_providers/rules_provider/rules_provider.dart'
    as _i146;
import 'package:itrust/features/auth/infrastructure/json_converters/rules_response_json_converter.dart'
    as _i45;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i12;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i11;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i7;
import 'package:itrust/features/common/application/application.dart' as _i98;
import 'package:itrust/features/common/application/providers/beautified_number_provider.dart'
    as _i217;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i16;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i24;
import 'package:itrust/features/common/common.dart' as _i53;
import 'package:itrust/features/common/domain/domain.dart' as _i8;
import 'package:itrust/features/common/domain/dto/end_users_response/end_users_response.dart'
    as _i42;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i65;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i61;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i55;
import 'package:itrust/features/common/domain/dto/post_comment_response/post_comment_response.dart'
    as _i32;
import 'package:itrust/features/common/domain/dto/post_comments_response/post_comments_response.dart'
    as _i46;
import 'package:itrust/features/common/domain/dto/post_response/post_response.dart'
    as _i30;
import 'package:itrust/features/common/domain/dto/posts_response/posts_response.dart'
    as _i48;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i51;
import 'package:itrust/features/common/domain/dto/user_info_response/user_info_response.dart'
    as _i36;
import 'package:itrust/features/common/domain/dto/users_response/users_response.dart'
    as _i38;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i34;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i161;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i113;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/device_info_provider.dart'
    as _i151;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i136;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i138;
import 'package:itrust/features/common/domain/providers/post_provider.dart'
    as _i143;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i152;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i90;
import 'package:itrust/features/common/domain/providers/user_info_provider.dart'
    as _i102;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i108;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i160;
import 'package:itrust/features/common/domain/services/chat_list_service.dart'
    as _i6;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i149;
import 'package:itrust/features/common/domain/services/post_service.dart'
    as _i154;
import 'package:itrust/features/common/domain/services/user_info_service.dart'
    as _i156;
import 'package:itrust/features/common/domain/services/user_service.dart'
    as _i157;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i116;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i17;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i25;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i99;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i112;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i114;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/device_info_service.dart'
    as _i19;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i137;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i139;
import 'package:itrust/features/common/infrastructure/domain_providers/post_provider/post_provider.dart'
    as _i144;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i148;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i91;
import 'package:itrust/features/common/infrastructure/domain_providers/user_info_provider/user_info_provider.dart'
    as _i103;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i109;
import 'package:itrust/features/common/infrastructure/json_converters/end_users_response_json_converter.dart'
    as _i43;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i66;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i62;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i56;
import 'package:itrust/features/common/infrastructure/json_converters/post_comment_response_json_converter.dart'
    as _i33;
import 'package:itrust/features/common/infrastructure/json_converters/post_comments_response_json_converter.dart'
    as _i47;
import 'package:itrust/features/common/infrastructure/json_converters/post_response_json_converter.dart'
    as _i31;
import 'package:itrust/features/common/infrastructure/json_converters/posts_response_json_converter.dart'
    as _i49;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i54;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i52;
import 'package:itrust/features/common/infrastructure/json_converters/user_info_response_json_converter.dart'
    as _i37;
import 'package:itrust/features/common/infrastructure/json_converters/users_response_json_converter.dart'
    as _i39;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i35;
import 'package:itrust/features/common/infrastructure/other/media_url_creator.dart'
    as _i140;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i127;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i15;
import 'package:itrust/features/features.dart' as _i167;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i211;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i117;
import 'package:itrust/features/feed/application/providers/feed_string_provider.dart'
    as _i130;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i222;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i210;
import 'package:itrust/features/feed/domain/dto/get_tags_response/get_tags_response.dart'
    as _i28;
import 'package:itrust/features/feed/domain/providers/feed_provider.dart'
    as _i128;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i162;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i164;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i118;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i131;
import 'package:itrust/features/feed/infrastructure/domain_providers/feed_provider/feed_provider.dart'
    as _i129;
import 'package:itrust/features/feed/infrastructure/json_converters/get_tags_response_json_converter.dart'
    as _i29;
import 'package:itrust/features/friend_bids/application/coordinators/friend_bids_coordinator.dart'
    as _i212;
import 'package:itrust/features/friend_bids/application/providers/friend_bids_string_provider.dart'
    as _i134;
import 'package:itrust/features/friend_bids/application/stores/friend_bids/friend_bids_store.dart'
    as _i214;
import 'package:itrust/features/friend_bids/application/stores/inbox_friend_bids/inbox_friend_bids_store.dart'
    as _i171;
import 'package:itrust/features/friend_bids/application/stores/outbox_friend_bids/outbox_friend_bids_store.dart'
    as _i178;
import 'package:itrust/features/friend_bids/domain/dto/friend_bids_amount_response/friend_bids_amount_response.dart'
    as _i40;
import 'package:itrust/features/friend_bids/domain/providers/friend_bids_provider.dart'
    as _i132;
import 'package:itrust/features/friend_bids/domain/services/friend_bids_service.dart'
    as _i165;
import 'package:itrust/features/friend_bids/infrastructure/app_providers/friend_bids_string_provider.dart'
    as _i135;
import 'package:itrust/features/friend_bids/infrastructure/domain_providers/friend_bids_provider/friend_bids_provider.dart'
    as _i133;
import 'package:itrust/features/friend_bids/infrastructure/json_converters/friend_bids_amount_response_json_converter.dart'
    as _i41;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i70;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i69;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i177;
import 'package:itrust/features/menu/application/providers/menu_string_provider.dart'
    as _i75;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i176;
import 'package:itrust/features/menu/infrastructure/app_providers/menu_string_provider.dart'
    as _i76;
import 'package:itrust/features/people/application/coordinators/people_coordinator.dart'
    as _i179;
import 'package:itrust/features/people/application/providers/people_string_provider.dart'
    as _i77;
import 'package:itrust/features/people/application/stores/all_users/all_users_store.dart'
    as _i159;
import 'package:itrust/features/people/application/stores/friends/friends_store.dart'
    as _i215;
import 'package:itrust/features/people/application/stores/people/people_store.dart'
    as _i216;
import 'package:itrust/features/people/application/stores/subscribers/subscribers_store.dart'
    as _i191;
import 'package:itrust/features/people/application/stores/subscriptions/subscriptions_store.dart'
    as _i155;
import 'package:itrust/features/people/domain/dto/people_amount_response/people_amount_response.dart'
    as _i67;
import 'package:itrust/features/people/domain/providers/people_provider.dart'
    as _i141;
import 'package:itrust/features/people/domain/services/people_service.dart'
    as _i153;
import 'package:itrust/features/people/infrastructure/app_providers/people_string_provider.dart'
    as _i78;
import 'package:itrust/features/people/infrastructure/domain_providers/people_provider/people_provider.dart'
    as _i142;
import 'package:itrust/features/people/infrastructure/json_converters/people_amount_response_json_converter.dart'
    as _i68;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i204;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i220;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i123;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i125;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i79;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i84;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i205;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i202;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i219;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i218;
import 'package:itrust/features/post/domain/domain.dart' as _i203;
import 'package:itrust/features/post/domain/providers/comment_provider.dart'
    as _i121;
import 'package:itrust/features/post/domain/services/comment_service.dart'
    as _i163;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i124;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i126;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i80;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i85;
import 'package:itrust/features/post/infrastructure/domain_providers/comment_provider/comment_provider.dart'
    as _i122;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i81;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i196;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i200;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i206;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i190;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i119;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i94;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i195;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i198;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i208;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i189;
import 'package:itrust/features/settings/domain/domain.dart' as _i199;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i59;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i63;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i110;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i158;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i120;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i95;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i111;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i60;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i64;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i93;
import 'package:itrust/features/user_wall/application/coordinators/coordinators.dart'
    as _i224;
import 'package:itrust/features/user_wall/application/coordinators/user_wall_coordinator.dart'
    as _i192;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i104;
import 'package:itrust/features/user_wall/application/providers/user_posts_string_provider.dart'
    as _i106;
import 'package:itrust/features/user_wall/application/stores/user_info/user_info_store.dart'
    as _i223;
import 'package:itrust/features/user_wall/application/stores/user_posts/user_posts_store.dart'
    as _i221;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i105;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_posts_string_provider.dart'
    as _i107;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i168;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i170;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i194;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i197;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i201;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i207;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i209;
import 'package:itrust/main/infrastructure/coordinators/friend_bids_coordinator.dart'
    as _i213;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i169;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i172;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i175;
import 'package:itrust/main/infrastructure/coordinators/people_coordinator.dart'
    as _i180;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i181;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i182;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i185;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i188;
import 'package:itrust/main/infrastructure/coordinators/user_wall_coordinator.dart'
    as _i193;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i58;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i10;
import 'package:itrust/repositories/implementations/comment_repository.dart'
    as _i14;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i22;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i83;
import 'package:itrust/repositories/implementations/staff_user_repository.dart'
    as _i97;
import 'package:itrust/repositories/implementations/token_repository.dart'
    as _i101;
import 'package:itrust/repositories/interfaces/chat_repository.dart' as _i9;
import 'package:itrust/repositories/interfaces/comment_repository.dart' as _i13;
import 'package:itrust/repositories/interfaces/end_user_repository.dart'
    as _i21;
import 'package:itrust/repositories/interfaces/interfaces.dart' as _i150;
import 'package:itrust/repositories/interfaces/post_repository.dart' as _i82;
import 'package:itrust/repositories/interfaces/staff_user_repository.dart'
    as _i96;
import 'package:itrust/repositories/interfaces/token_repository.dart' as _i100;
import 'package:itrust/utils/server_settings.dart' as _i92;
import 'package:itrust/utils/utils.dart' as _i115;
import 'package:json_annotation/json_annotation.dart' as _i50;
import 'package:mapster/mapster.dart' as _i74;
import 'package:problem_details/problem_details.dart' as _i57;

import '../../../env/env_module.dart' as _i225;
import '../router/router.dart' as _i226;
import '../third_party/device_info_plus_module.dart' as _i227;
import '../third_party/dio_module.dart' as _i228;
import '../third_party/mapster_module.dart' as _i229;
import '../third_party/secure_storage_module.dart' as _i230;

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
  gh.singleton<_i27.JsonConverter<_i28.GetTagsResponse, Map<String, Object?>>>(
      _i29.GetTagsResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i30.PostResponse, Map<String, Object?>>>(
      _i31.PostResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i32.PostCommentResponse, Map<String, Object?>>>(
      _i33.PostCommentResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i34.VerifyTokenResponse, Map<String, Object?>>>(
      _i35.VerifyTokenResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i36.UserInfoResponse, Map<String, Object?>>>(
      _i37.UserInfoResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i38.UsersResponse, Map<String, Object?>>>(
      _i39.UsersResponseJsonConverter());
  gh.singleton<
      _i27.JsonConverter<_i40.FriendBidsAmountResponse,
          Map<String, Object?>>>(_i41.FriendBidsAmountResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i42.EndUsersResponse, Map<String, Object?>>>(
      _i43.EndUsersResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i44.RulesResponse, Map<String, Object?>>>(
      _i45.RulesResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i46.PostCommentsResponse, Map<String, Object?>>>(
      _i47.PostCommentsResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i48.PostsResponse, Map<String, Object?>>>(
      _i49.PostsResponseJsonConverter());
  gh.singleton<_i50.JsonConverter<_i51.RegisterResponse, Map<String, Object?>>>(
      _i52.RegisterResponseJsonConverter());
  gh.singleton<
          _i50.JsonConverter<_i53.RefreshTokenResponse, Map<String, Object?>>>(
      _i54.RefreshTokenResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i55.LogOutResponse, Map<String, Object?>>>(
      _i56.LogOutResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i57.ProblemDetails, Map<String, Object?>>>(
      _i58.ProblemDetailsJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i59.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i60.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<_i27.JsonConverter<_i61.LogInResponse, Map<String, Object?>>>(
      _i62.LogInResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i63.GetDevicesResponse, Map<String, Object?>>>(
      _i64.GetDevicesResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i65.GetUserByIDResponse, Map<String, Object?>>>(
      _i66.GetUserByIDResponseJsonConverter());
  gh.singleton<
          _i27.JsonConverter<_i67.PeopleAmountResponse, Map<String, Object?>>>(
      _i68.PeopleAmountResponseJsonConverter());
  gh.singleton<_i69.LockService>(_i69.LockService());
  gh.factory<_i70.LockStore>(
      () => _i70.LockStore(lockService: gh<_i69.LockService>()));
  gh.singleton<_i71.LogInStringProvider>(_i72.ProdLogInStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i74.Mapster>(mapsterModule.mapster);
  gh.singleton<_i75.MenuStringProvider>(_i76.ProdMenuStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i77.PeopleStringProvider>(_i78.ProdPeopleStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i79.PostCommentStringProvider>(
      _i80.ProdPostCommentStringProvider(
          navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i81.PostMapsterRegistrar>(
      _i81.PostMapsterRegistrar(gh<_i74.Mapster>())..register());
  gh.singleton<_i82.PostRepository>(
    _i83.DevPostRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i84.PostStringProvider>(_i85.ProdPostStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i86.RegisterStringProvider>(_i87.ProdRegisterStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i88.RulesStringProvider>(_i89.ProdRulesStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  await gh.singletonAsync<_i90.ServerExceptionProvider>(
    () => _i91.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i92.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i93.SettingsMapsterRegistrar>(
      _i93.SettingsMapsterRegistrar(gh<_i74.Mapster>())..register());
  gh.singleton<_i94.SettingsStringProvider>(_i95.ProdSettingsStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i96.StaffUserRepository>(
    _i97.DevStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i98.SuffixNumberProvider>(_i99.ProdSuffixNumberProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i100.TokenRepository>(_i101.ProdTokenRepository(
    dio: gh<_i20.Dio>(),
    secureStorage: gh<_i23.FlutterSecureStorage>(),
  ));
  gh.singleton<_i102.UserInfoProvider>(_i103.ProdUserInfoProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i104.UserInfoStringProvider>(_i105.ProdUserInfoStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i106.UserPostsStringProvider>(_i107.ProdUserPostsStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i108.UserProvider>(_i109.ProdUserProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i110.AccountProvider>(_i111.ProdAccountProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i8.AuthExceptionProvider>(
      _i112.ProdAuthExceptionProvider(gh<_i8.ServerExceptionProvider>()));
  gh.singleton<_i113.AuthProvider>(_i114.ProdAuthProvider(
    gh<_i20.Dio>(),
    gh<_i115.ServerSettings>(),
  ));
  gh.singleton<_i98.BeautifiedNumberProvider>(
      _i116.ProdBeautifiedNumberProvider(
          suffixNumberProvider: gh<_i98.SuffixNumberProvider>()));
  gh.singleton<_i117.CategoryStringProvider>(_i118.ProdCategoryStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i119.ChangePersonalInfoStringProvider>(
      _i120.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i121.CommentProvider>(_i122.ProdCommentProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i123.CommentReplyStringProvider>(
      _i124.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i125.CommentStringProvider>(_i126.ProdCommentStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i127.CommonMapsterRegistrar>(
      _i127.CommonMapsterRegistrar(gh<_i74.Mapster>())..register());
  gh.singleton<_i128.FeedProvider>(_i129.ProdFeedProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i130.FeedStringProvider>(_i131.ProdFeedStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i132.FriendBidsProvider>(_i133.ProdFriendBidsProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i134.FriendBidsStringProvider>(
      _i135.ProdFriendBidsStringProvider(
          navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i136.KeepFreshTokenExceptionProvider>(
      _i137.ProdKeepFreshTokenExceptionProvider(
          gh<_i90.ServerExceptionProvider>()));
  gh.singleton<_i138.KeepFreshTokenProvider>(_i139.ProdKeepFreshTokenProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i140.MediaUrlCreator>(
      _i140.MediaUrlCreator(serverSettings: gh<_i92.ServerSettings>()));
  gh.singleton<_i141.PeopleProvider>(_i142.ProdPeopleProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i143.PostProvider>(_i144.ProdPostProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i145.RulesProvider>(_i146.ProdRulesProvider(
    gh<_i20.Dio>(),
    gh<_i92.ServerSettings>(),
  ));
  gh.singleton<_i147.RulesService>(
      _i147.RulesService(rulesProvider: gh<_i145.RulesProvider>()));
  gh.singleton<_i8.ServerAvailabilityProvider>(
      _i148.ProdServerAvailabilityProvider(gh<_i92.ServerSettings>()));
  gh.singleton<_i149.KeepFreshTokenService>(_i149.KeepFreshTokenService(
    tokenService: gh<_i150.TokenRepository>(),
    keepFreshTokenProvider: gh<_i138.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoProvider: gh<_i151.DeviceInfoProvider>(),
    keepFreshTokenExceptionProvider:
        gh<_i136.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i152.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i150.EndUserRepository>(),
  ));
  gh.singleton<_i153.PeopleService>(_i153.PeopleService(
    keepFreshTokenService: gh<_i149.KeepFreshTokenService>(),
    peopleProvider: gh<_i141.PeopleProvider>(),
    endUserRepository: gh<_i150.EndUserRepository>(),
    staffUserRepository: gh<_i150.StaffUserRepository>(),
  ));
  gh.singleton<_i154.PostService>(_i154.PostService(
    keepFreshTokenService: gh<_i149.KeepFreshTokenService>(),
    postProvider: gh<_i143.PostProvider>(),
    postRepository: gh<_i150.PostRepository>(),
    commentRepository: gh<_i150.CommentRepository>(),
  ));
  gh.factory<_i155.SubscriptionsStore>(() => _i155.SubscriptionsStore(
        peopleService: gh<_i153.PeopleService>(),
        peopleStringProvider: gh<_i77.PeopleStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i156.UserInfoService>(_i156.UserInfoService(
    keepFreshTokenService: gh<_i149.KeepFreshTokenService>(),
    userInfoProvider: gh<_i102.UserInfoProvider>(),
  ));
  gh.singleton<_i157.UserService>(_i157.UserService(
    keepFreshTokenService: gh<_i149.KeepFreshTokenService>(),
    userProvider: gh<_i108.UserProvider>(),
    endUserRepository: gh<_i150.EndUserRepository>(),
    staffUserRepository: gh<_i150.StaffUserRepository>(),
  ));
  gh.singleton<_i158.AccountService>(
    _i158.AccountService(
      authStatusProvider: gh<_i8.AuthStatusProvider>(),
      userProvider: gh<_i8.UserProvider>(),
      accountProvider: gh<_i110.AccountProvider>(),
      keepFreshTokenService: gh<_i8.KeepFreshTokenService>(),
      endUserRepository: gh<_i150.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i159.AllUsersStore>(() => _i159.AllUsersStore(
        peopleService: gh<_i153.PeopleService>(),
        peopleStringProvider: gh<_i77.PeopleStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  await gh.singletonAsync<_i160.AuthService>(
    () {
      final i = _i160.AuthService(
        serverAvailabilityProvider: gh<_i152.ServerAvailabilityProvider>(),
        authProvider: gh<_i113.AuthProvider>(),
        tokenService: gh<_i150.TokenRepository>(),
        endUserRepository: gh<_i150.EndUserRepository>(),
        authExceptionProvider: gh<_i161.AuthExceptionProvider>(),
        deviceInfoProvider: gh<_i151.DeviceInfoProvider>(),
        keepFreshTokenService: gh<_i149.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i162.CategoryService>(_i162.CategoryService(
    keepFreshTokenService: gh<_i149.KeepFreshTokenService>(),
    feedProvider: gh<_i128.FeedProvider>(),
  ));
  gh.singleton<_i163.CommentService>(_i163.CommentService(
    keepFreshTokenService: gh<_i53.KeepFreshTokenService>(),
    commentProvider: gh<_i121.CommentProvider>(),
    commentRepository: gh<_i150.CommentRepository>(),
  ));
  gh.singleton<_i164.FeedService>(_i164.FeedService(
    keepFreshTokenService: gh<_i53.KeepFreshTokenService>(),
    feedProvider: gh<_i128.FeedProvider>(),
    postRepository: gh<_i150.PostRepository>(),
  ));
  gh.singleton<_i165.FriendBidsService>(_i165.FriendBidsService(
    keepFreshTokenService: gh<_i8.KeepFreshTokenService>(),
    friendBidsProvider: gh<_i132.FriendBidsProvider>(),
    endUserRepository: gh<_i150.EndUserRepository>(),
  ));
  gh.singleton<_i166.GoRouter>(routerModule.router(
    gh<_i26.GlobalKey<_i26.NavigatorState>>(),
    gh<_i167.AuthService>(),
  ));
  gh.singleton<_i168.HomeCoordinator>(
    _i169.ProdHomeCoordinator(goRouter: gh<_i166.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i170.HomeStore>(
      () => _i170.HomeStore(homeCoordinator: gh<_i168.HomeCoordinator>()));
  gh.factory<_i171.InboxFriendBidsStore>(() => _i171.InboxFriendBidsStore(
        friendBidsService: gh<_i165.FriendBidsService>(),
        friendBidsStringProvider: gh<_i134.FriendBidsStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i167.LogInCoordinator>(
    _i172.ProdLogInCoordinator(
      goRouter: gh<_i166.GoRouter>(),
      authStatusProvider: gh<_i167.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i173.LogInStore>(() => _i173.LogInStore(
        authService: gh<_i8.AuthService>(),
        logInCoordinator: gh<_i174.LogInCoordinator>(),
        logInStringProvider: gh<_i71.LogInStringProvider>(),
      ));
  gh.singleton<_i167.MenuCoordinator>(
      _i175.ProdMenuCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.singleton<_i176.MenuStore>(_i176.MenuStore(
    menuCoordinator: gh<_i177.MenuCoordinator>(),
    menuStringProvider: gh<_i75.MenuStringProvider>(),
    endUserRepository: gh<_i150.EndUserRepository>(),
  ));
  gh.factory<_i178.OutboxFriendBidsStore>(() => _i178.OutboxFriendBidsStore(
        friendBidsService: gh<_i165.FriendBidsService>(),
        friendBidsStringProvider: gh<_i134.FriendBidsStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i179.PeopleCoordinator>(
      _i180.ProdPeopleCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.singleton<_i167.PostCoordinator>(
      _i181.ProdPostCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.singleton<_i167.RegisterCoordinator>(
    _i182.ProdRegisterCoordinator(
      goRouter: gh<_i166.GoRouter>(),
      authStatusProvider: gh<_i167.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i183.RegisterStore>(() => _i183.RegisterStore(
        authService: gh<_i8.AuthService>(),
        registerCoordinator: gh<_i184.RegisterCoordinator>(),
        registerStringProvider: gh<_i86.RegisterStringProvider>(),
      ));
  gh.singleton<_i167.RulesCoordinator>(
      _i185.ProdRulesCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.factory<_i186.RulesStore>(() => _i186.RulesStore(
        rulesService: gh<_i147.RulesService>(),
        rulesCoordinator: gh<_i187.RulesCoordinator>(),
        rulesStringProvider: gh<_i88.RulesStringProvider>(),
      ));
  gh.singleton<_i167.SettingsCoordinator>(
      _i188.ProdSettingsCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.singleton<_i189.SettingsStore>(_i189.SettingsStore(
    authService: gh<_i53.AuthService>(),
    settingsCoordinator: gh<_i190.SettingsCoordinator>(),
    settingsStringProvider: gh<_i94.SettingsStringProvider>(),
    accountService: gh<_i158.AccountService>(),
    mapster: gh<_i74.Mapster>(),
  ));
  gh.factory<_i191.SubscribersStore>(() => _i191.SubscribersStore(
        peopleService: gh<_i153.PeopleService>(),
        peopleStringProvider: gh<_i77.PeopleStringProvider>(),
        coordinator: gh<_i179.PeopleCoordinator>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i192.UserWallCoordinator>(
      _i193.ProdUserWallCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.singleton<_i167.AccountSettingsCoordinator>(
      _i194.ProdAccountSettingsCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.factory<_i195.AccountSettingsStore>(() => _i195.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i196.AccountSettingsCoordinator>()));
  gh.singleton<_i167.ChangePersonalInfoCoordinator>(
      _i197.ProdChangePersonalInfoCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.factory<_i198.ChangePersonalInfoStore>(() => _i198.ChangePersonalInfoStore(
        accountService: gh<_i199.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i200.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i119.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i167.CommentCoordinator>(
      _i201.ProdCommentCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.factory<_i202.CommentReplyStore>(() => _i202.CommentReplyStore(
        commentService: gh<_i203.CommentService>(),
        userService: gh<_i53.UserService>(),
        commentCoordinator: gh<_i204.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i123.CommentReplyStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.factory<_i205.CommentStore>(() => _i205.CommentStore(
        commentReplyStore: gh<_i202.CommentReplyStore>(),
        commentService: gh<_i203.CommentService>(),
        userService: gh<_i53.UserService>(),
        commentCoordinator: gh<_i204.CommentCoordinator>(),
        commentStringProvider: gh<_i125.CommentStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i206.DevicesCoordinator>(
      _i207.ProdDevicesCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.singleton<_i208.DevicesStore>(_i208.DevicesStore(
    devicesCoordinator: gh<_i206.DevicesCoordinator>(),
    accountService: gh<_i158.AccountService>(),
    mapster: gh<_i74.Mapster>(),
  ));
  gh.singleton<_i167.FeedCoordinator>(
      _i209.ProdFeedCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.factory<_i210.FeedStore>(() => _i210.FeedStore(
        feedService: gh<_i164.FeedService>(),
        userService: gh<_i8.UserService>(),
        postService: gh<_i8.PostService>(),
        feedCoordinator: gh<_i211.FeedCoordinator>(),
        feedStringProvider: gh<_i130.FeedStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i212.FriendBidsCoordinator>(
      _i213.ProdFriendBidsCoordinator(goRouter: gh<_i166.GoRouter>()));
  gh.factory<_i214.FriendBidsStore>(() => _i214.FriendBidsStore(
        inboxStore: gh<_i171.InboxFriendBidsStore>(),
        outboxStore: gh<_i178.OutboxFriendBidsStore>(),
        friendBidsService: gh<_i165.FriendBidsService>(),
        userInfoService: gh<_i8.UserInfoService>(),
        friendBidsStringProvider: gh<_i134.FriendBidsStringProvider>(),
        beautifiedNumberProvider: gh<_i98.BeautifiedNumberProvider>(),
        coordinator: gh<_i212.FriendBidsCoordinator>(),
        endUserRepository: gh<_i150.EndUserRepository>(),
      ));
  gh.factory<_i215.FriendsStore>(() => _i215.FriendsStore(
        peopleService: gh<_i153.PeopleService>(),
        peopleStringProvider: gh<_i77.PeopleStringProvider>(),
        coordinator: gh<_i179.PeopleCoordinator>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.factory<_i216.PeopleStore>(() => _i216.PeopleStore(
        allUsersStore: gh<_i159.AllUsersStore>(),
        friendsStore: gh<_i215.FriendsStore>(),
        subscribersStore: gh<_i191.SubscribersStore>(),
        subscriptionsStore: gh<_i155.SubscriptionsStore>(),
        peopleService: gh<_i153.PeopleService>(),
        peopleStringProvider: gh<_i77.PeopleStringProvider>(),
        coordinator: gh<_i179.PeopleCoordinator>(),
        beautifiedNumberProvider: gh<_i217.BeautifiedNumberProvider>(),
        endUserRepository: gh<_i21.EndUserRepository>(),
      ));
  gh.factory<_i218.PostCommentStore>(() => _i218.PostCommentStore(
        commentService: gh<_i203.CommentService>(),
        userService: gh<_i53.UserService>(),
        commentCoordinator: gh<_i204.CommentCoordinator>(),
        postCommentStringProvider: gh<_i79.PostCommentStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.factory<_i219.PostStore>(() => _i219.PostStore(
        postCommentStore: gh<_i218.PostCommentStore>(),
        postService: gh<_i53.PostService>(),
        userService: gh<_i53.UserService>(),
        postCoordinator: gh<_i220.PostCoordinator>(),
        postStringProvider: gh<_i84.PostStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.factory<_i221.UserPostsStore>(() => _i221.UserPostsStore(
        postService: gh<_i154.PostService>(),
        userService: gh<_i157.UserService>(),
        coordinator: gh<_i192.UserWallCoordinator>(),
        userPostsStringProvider: gh<_i106.UserPostsStringProvider>(),
        endUserRepository: gh<_i21.EndUserRepository>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i222.CategoryStore>(_i222.CategoryStore(
    feedStore: gh<_i210.FeedStore>(),
    categoryService: gh<_i162.CategoryService>(),
    categoryStringProvider: gh<_i117.CategoryStringProvider>(),
  ));
  gh.factory<_i223.UserInfoStore>(() => _i223.UserInfoStore(
        userPostsStore: gh<_i221.UserPostsStore>(),
        userInfoService: gh<_i53.UserInfoService>(),
        userInfoStringProvider: gh<_i104.UserInfoStringProvider>(),
        coordinator: gh<_i224.UserWallCoordinator>(),
        endUserRepository: gh<_i21.EndUserRepository>(),
        mapster: gh<_i74.Mapster>(),
      ));
  return getIt;
}

class _$EnvModule extends _i225.EnvModule {}

class _$RouterModule extends _i226.RouterModule {}

class _$DeviceInfoPlusModule extends _i227.DeviceInfoPlusModule {}

class _$DioModule extends _i228.DioModule {}

class _$MapsterModule extends _i229.MapsterModule {}

class _$SecureStorageModule extends _i230.SecureStorageModule {}
