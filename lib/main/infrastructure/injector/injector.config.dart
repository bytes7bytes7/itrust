// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i15;
import 'package:dio/dio.dart' as _i18;
import 'package:flutter/material.dart' as _i24;
import 'package:flutter/widgets.dart' as _i73;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i21;
import 'package:freezed_annotation/freezed_annotation.dart' as _i25;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i173;
import 'package:injectable/injectable.dart' as _i2;
import 'package:itrust/features/auth/application/coordinators/log_in_coordinator.dart'
    as _i181;
import 'package:itrust/features/auth/application/coordinators/register_coordinator.dart'
    as _i191;
import 'package:itrust/features/auth/application/coordinators/rules_coordinator.dart'
    as _i194;
import 'package:itrust/features/auth/application/providers/log_in_string_provider.dart'
    as _i71;
import 'package:itrust/features/auth/application/providers/register_string_provider.dart'
    as _i87;
import 'package:itrust/features/auth/application/providers/rules_string_provider.dart'
    as _i89;
import 'package:itrust/features/auth/application/stores/log_in/log_in_store.dart'
    as _i180;
import 'package:itrust/features/auth/application/stores/register/register_store.dart'
    as _i190;
import 'package:itrust/features/auth/application/stores/rules/rules_store.dart'
    as _i193;
import 'package:itrust/features/auth/domain/dto/rules_response/rules_response.dart'
    as _i39;
import 'package:itrust/features/auth/domain/providers/rules_provider.dart'
    as _i150;
import 'package:itrust/features/auth/domain/services/rules_service.dart'
    as _i152;
import 'package:itrust/features/auth/infrastructure/app_providers/log_in_string_provider.dart'
    as _i72;
import 'package:itrust/features/auth/infrastructure/app_providers/register_string_provider.dart'
    as _i88;
import 'package:itrust/features/auth/infrastructure/app_providers/rules_string_provider.dart'
    as _i90;
import 'package:itrust/features/auth/infrastructure/domain_providers/rules_provider/rules_provider.dart'
    as _i151;
import 'package:itrust/features/auth/infrastructure/json_converters/rules_response_json_converter.dart'
    as _i40;
import 'package:itrust/features/chat/application/stores/chat_store/chat_store.dart'
    as _i9;
import 'package:itrust/features/chat/domain/services/chat_service.dart' as _i8;
import 'package:itrust/features/chat_list/application/stores/chat_list/chat_list_store.dart'
    as _i169;
import 'package:itrust/features/common/application/application.dart' as _i99;
import 'package:itrust/features/common/application/providers/beautified_number_provider.dart'
    as _i224;
import 'package:itrust/features/common/application/providers/chat_list_string_provider.dart'
    as _i124;
import 'package:itrust/features/common/application/providers/date_time_provider.dart'
    as _i13;
import 'package:itrust/features/common/application/providers/formatted_date_provider.dart'
    as _i22;
import 'package:itrust/features/common/common.dart' as _i41;
import 'package:itrust/features/common/domain/domain.dart' as _i16;
import 'package:itrust/features/common/domain/dto/chats_response/chats_response.dart'
    as _i37;
import 'package:itrust/features/common/domain/dto/end_users_response/end_users_response.dart'
    as _i63;
import 'package:itrust/features/common/domain/dto/get_user_by_id_response/get_user_by_id_response.dart'
    as _i59;
import 'package:itrust/features/common/domain/dto/log_in_response/log_in_response.dart'
    as _i57;
import 'package:itrust/features/common/domain/dto/log_out_response/log_out_response.dart'
    as _i55;
import 'package:itrust/features/common/domain/dto/post_comment_response/post_comment_response.dart'
    as _i45;
import 'package:itrust/features/common/domain/dto/post_comments_response/post_comments_response.dart'
    as _i47;
import 'package:itrust/features/common/domain/dto/post_response/post_response.dart'
    as _i43;
import 'package:itrust/features/common/domain/dto/posts_response/posts_response.dart'
    as _i53;
import 'package:itrust/features/common/domain/dto/register_response/register_response.dart'
    as _i33;
import 'package:itrust/features/common/domain/dto/user_info_response/user_info_response.dart'
    as _i67;
import 'package:itrust/features/common/domain/dto/users_response/users_response.dart'
    as _i30;
import 'package:itrust/features/common/domain/dto/verify_token_response/verify_token_response.dart'
    as _i28;
import 'package:itrust/features/common/domain/providers/auth_exception_provider.dart'
    as _i166;
import 'package:itrust/features/common/domain/providers/auth_provider.dart'
    as _i114;
import 'package:itrust/features/common/domain/providers/auth_status_provider.dart'
    as _i4;
import 'package:itrust/features/common/domain/providers/chat_list_provider.dart'
    as _i122;
import 'package:itrust/features/common/domain/providers/device_info_provider.dart'
    as _i156;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_exception_provider.dart'
    as _i141;
import 'package:itrust/features/common/domain/providers/keep_fresh_token_provider.dart'
    as _i143;
import 'package:itrust/features/common/domain/providers/post_provider.dart'
    as _i148;
import 'package:itrust/features/common/domain/providers/server_availability_provider.dart'
    as _i157;
import 'package:itrust/features/common/domain/providers/server_exception_provider.dart'
    as _i91;
import 'package:itrust/features/common/domain/providers/user_info_provider.dart'
    as _i103;
import 'package:itrust/features/common/domain/providers/user_provider.dart'
    as _i109;
import 'package:itrust/features/common/domain/services/auth_service.dart'
    as _i165;
import 'package:itrust/features/common/domain/services/chat_list_service.dart'
    as _i168;
import 'package:itrust/features/common/domain/services/keep_fresh_token_service.dart'
    as _i154;
import 'package:itrust/features/common/domain/services/message_service.dart'
    as _i77;
import 'package:itrust/features/common/domain/services/post_service.dart'
    as _i159;
import 'package:itrust/features/common/domain/services/user_info_service.dart'
    as _i161;
import 'package:itrust/features/common/domain/services/user_service.dart'
    as _i162;
import 'package:itrust/features/common/infrastructure/app_providers/beautified_number_provider.dart'
    as _i117;
import 'package:itrust/features/common/infrastructure/app_providers/chat_list_string_provider.dart'
    as _i125;
import 'package:itrust/features/common/infrastructure/app_providers/date_time_provider.dart'
    as _i14;
import 'package:itrust/features/common/infrastructure/app_providers/formatted_date_provider.dart'
    as _i23;
import 'package:itrust/features/common/infrastructure/app_providers/suffix_number_provider.dart'
    as _i100;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_exception_provider.dart'
    as _i113;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_provider/auth_provider.dart'
    as _i115;
import 'package:itrust/features/common/infrastructure/domain_providers/auth_status_provider.dart'
    as _i5;
import 'package:itrust/features/common/infrastructure/domain_providers/chat_list_provider/chat_list_provider.dart'
    as _i123;
import 'package:itrust/features/common/infrastructure/domain_providers/device_info_service.dart'
    as _i17;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_exception_provider.dart'
    as _i142;
import 'package:itrust/features/common/infrastructure/domain_providers/keep_fresh_token_provider/keep_fresh_token_provider.dart'
    as _i144;
import 'package:itrust/features/common/infrastructure/domain_providers/post_provider/post_provider.dart'
    as _i149;
import 'package:itrust/features/common/infrastructure/domain_providers/server_availability_provider.dart'
    as _i153;
import 'package:itrust/features/common/infrastructure/domain_providers/server_exception_provider/server_exception_provider.dart'
    as _i92;
import 'package:itrust/features/common/infrastructure/domain_providers/user_info_provider/user_info_provider.dart'
    as _i104;
import 'package:itrust/features/common/infrastructure/domain_providers/user_provider/user_provider.dart'
    as _i110;
import 'package:itrust/features/common/infrastructure/json_converters/chats_response_json_converter.dart'
    as _i38;
import 'package:itrust/features/common/infrastructure/json_converters/end_users_response_json_converter.dart'
    as _i64;
import 'package:itrust/features/common/infrastructure/json_converters/get_user_by_id_response_json_converter.dart'
    as _i60;
import 'package:itrust/features/common/infrastructure/json_converters/log_in_response_json_converter.dart'
    as _i58;
import 'package:itrust/features/common/infrastructure/json_converters/log_out_response_json_converter.dart'
    as _i56;
import 'package:itrust/features/common/infrastructure/json_converters/post_comment_response_json_converter.dart'
    as _i46;
import 'package:itrust/features/common/infrastructure/json_converters/post_comments_response_json_converter.dart'
    as _i48;
import 'package:itrust/features/common/infrastructure/json_converters/post_response_json_converter.dart'
    as _i44;
import 'package:itrust/features/common/infrastructure/json_converters/posts_response_json_converter.dart'
    as _i54;
import 'package:itrust/features/common/infrastructure/json_converters/refresh_token_response_json_converter.dart'
    as _i42;
import 'package:itrust/features/common/infrastructure/json_converters/register_response_json_converter.dart'
    as _i34;
import 'package:itrust/features/common/infrastructure/json_converters/user_info_response_json_converter.dart'
    as _i68;
import 'package:itrust/features/common/infrastructure/json_converters/users_response_json_converter.dart'
    as _i31;
import 'package:itrust/features/common/infrastructure/json_converters/verify_token_response_json_converter.dart'
    as _i29;
import 'package:itrust/features/common/infrastructure/other/media_url_creator.dart'
    as _i145;
import 'package:itrust/features/common/infrastructure/third_party/mapster_registrar.dart'
    as _i132;
import 'package:itrust/features/connection/application/stores/connection/connection_store.dart'
    as _i12;
import 'package:itrust/features/features.dart' as _i174;
import 'package:itrust/features/feed/application/coordinators/feed_coordinator.dart'
    as _i218;
import 'package:itrust/features/feed/application/providers/category_string_provider.dart'
    as _i118;
import 'package:itrust/features/feed/application/providers/feed_string_provider.dart'
    as _i135;
import 'package:itrust/features/feed/application/stores/category/category_store.dart'
    as _i229;
import 'package:itrust/features/feed/application/stores/feed/feed_store.dart'
    as _i217;
import 'package:itrust/features/feed/domain/dto/get_tags_response/get_tags_response.dart'
    as _i26;
import 'package:itrust/features/feed/domain/providers/feed_provider.dart'
    as _i133;
import 'package:itrust/features/feed/domain/services/category_service.dart'
    as _i167;
import 'package:itrust/features/feed/domain/services/feed_service.dart'
    as _i171;
import 'package:itrust/features/feed/infrastructure/app_providers/category_string_provider.dart'
    as _i119;
import 'package:itrust/features/feed/infrastructure/app_providers/feed_string_provider.dart'
    as _i136;
import 'package:itrust/features/feed/infrastructure/domain_providers/feed_provider/feed_provider.dart'
    as _i134;
import 'package:itrust/features/feed/infrastructure/json_converters/get_tags_response_json_converter.dart'
    as _i27;
import 'package:itrust/features/friend_bids/application/coordinators/friend_bids_coordinator.dart'
    as _i219;
import 'package:itrust/features/friend_bids/application/providers/friend_bids_string_provider.dart'
    as _i139;
import 'package:itrust/features/friend_bids/application/stores/friend_bids/friend_bids_store.dart'
    as _i221;
import 'package:itrust/features/friend_bids/application/stores/inbox_friend_bids/inbox_friend_bids_store.dart'
    as _i178;
import 'package:itrust/features/friend_bids/application/stores/outbox_friend_bids/outbox_friend_bids_store.dart'
    as _i185;
import 'package:itrust/features/friend_bids/domain/dto/friend_bids_amount_response/friend_bids_amount_response.dart'
    as _i35;
import 'package:itrust/features/friend_bids/domain/providers/friend_bids_provider.dart'
    as _i137;
import 'package:itrust/features/friend_bids/domain/services/friend_bids_service.dart'
    as _i172;
import 'package:itrust/features/friend_bids/infrastructure/app_providers/friend_bids_string_provider.dart'
    as _i140;
import 'package:itrust/features/friend_bids/infrastructure/domain_providers/friend_bids_provider/friend_bids_provider.dart'
    as _i138;
import 'package:itrust/features/friend_bids/infrastructure/json_converters/friend_bids_amount_response_json_converter.dart'
    as _i36;
import 'package:itrust/features/lock/application/stores/lock/lock_store.dart'
    as _i70;
import 'package:itrust/features/lock/domain/services/lock_service.dart' as _i69;
import 'package:itrust/features/menu/application/coordinators/menu_coordinator.dart'
    as _i184;
import 'package:itrust/features/menu/application/providers/menu_string_provider.dart'
    as _i75;
import 'package:itrust/features/menu/application/stores/menu/menu_store.dart'
    as _i183;
import 'package:itrust/features/menu/infrastructure/app_providers/menu_string_provider.dart'
    as _i76;
import 'package:itrust/features/people/application/coordinators/people_coordinator.dart'
    as _i186;
import 'package:itrust/features/people/application/providers/people_string_provider.dart'
    as _i78;
import 'package:itrust/features/people/application/stores/all_users/all_users_store.dart'
    as _i164;
import 'package:itrust/features/people/application/stores/friends/friends_store.dart'
    as _i222;
import 'package:itrust/features/people/application/stores/people/people_store.dart'
    as _i223;
import 'package:itrust/features/people/application/stores/subscribers/subscribers_store.dart'
    as _i198;
import 'package:itrust/features/people/application/stores/subscriptions/subscriptions_store.dart'
    as _i160;
import 'package:itrust/features/people/domain/dto/people_amount_response/people_amount_response.dart'
    as _i61;
import 'package:itrust/features/people/domain/providers/people_provider.dart'
    as _i146;
import 'package:itrust/features/people/domain/services/people_service.dart'
    as _i158;
import 'package:itrust/features/people/infrastructure/app_providers/people_string_provider.dart'
    as _i79;
import 'package:itrust/features/people/infrastructure/domain_providers/people_provider/people_provider.dart'
    as _i147;
import 'package:itrust/features/people/infrastructure/json_converters/people_amount_response_json_converter.dart'
    as _i62;
import 'package:itrust/features/post/application/coordinators/comment_coordinator.dart'
    as _i211;
import 'package:itrust/features/post/application/coordinators/post_coordinator.dart'
    as _i227;
import 'package:itrust/features/post/application/providers/comment_reply_string_provider.dart'
    as _i128;
import 'package:itrust/features/post/application/providers/comment_string_provider.dart'
    as _i130;
import 'package:itrust/features/post/application/providers/post_comment_string_provider.dart'
    as _i80;
import 'package:itrust/features/post/application/providers/post_string_provider.dart'
    as _i85;
import 'package:itrust/features/post/application/stores/comment/comment_store.dart'
    as _i212;
import 'package:itrust/features/post/application/stores/comment_reply/comment_reply_store.dart'
    as _i209;
import 'package:itrust/features/post/application/stores/post/post_store.dart'
    as _i226;
import 'package:itrust/features/post/application/stores/post_comment/post_comment_store.dart'
    as _i225;
import 'package:itrust/features/post/domain/domain.dart' as _i210;
import 'package:itrust/features/post/domain/providers/comment_provider.dart'
    as _i126;
import 'package:itrust/features/post/domain/services/comment_service.dart'
    as _i170;
import 'package:itrust/features/post/infrastructure/app_providers/comment_reply_string_provider.dart'
    as _i129;
import 'package:itrust/features/post/infrastructure/app_providers/comment_string_provider.dart'
    as _i131;
import 'package:itrust/features/post/infrastructure/app_providers/post_comment_string_provider.dart'
    as _i81;
import 'package:itrust/features/post/infrastructure/app_providers/post_string_provider.dart'
    as _i86;
import 'package:itrust/features/post/infrastructure/domain_providers/comment_provider/comment_provider.dart'
    as _i127;
import 'package:itrust/features/post/infrastructure/third_party/mapster_registrar.dart'
    as _i82;
import 'package:itrust/features/settings/application/coordinators/account_settings_coordinator.dart'
    as _i203;
import 'package:itrust/features/settings/application/coordinators/change_personal_info_coordinator.dart'
    as _i207;
import 'package:itrust/features/settings/application/coordinators/devices_coordinator.dart'
    as _i213;
import 'package:itrust/features/settings/application/coordinators/settings_coordinator.dart'
    as _i197;
import 'package:itrust/features/settings/application/providers/change_personal_info_string_provider.dart'
    as _i120;
import 'package:itrust/features/settings/application/providers/settings_string_provider.dart'
    as _i95;
import 'package:itrust/features/settings/application/stores/account_settings/account_settings_store.dart'
    as _i202;
import 'package:itrust/features/settings/application/stores/change_personal_info/change_personal_info_store.dart'
    as _i205;
import 'package:itrust/features/settings/application/stores/devices/devices_store.dart'
    as _i215;
import 'package:itrust/features/settings/application/stores/settings/settings_store.dart'
    as _i196;
import 'package:itrust/features/settings/domain/domain.dart' as _i206;
import 'package:itrust/features/settings/domain/dto/change_personal_info_response/change_personal_info_response.dart'
    as _i51;
import 'package:itrust/features/settings/domain/dto/get_devices_response/get_devices_response.dart'
    as _i49;
import 'package:itrust/features/settings/domain/providers/account_provider.dart'
    as _i111;
import 'package:itrust/features/settings/domain/services/account_service.dart'
    as _i163;
import 'package:itrust/features/settings/infrastructure/app_providers/change_personal_info_string_provider.dart'
    as _i121;
import 'package:itrust/features/settings/infrastructure/app_providers/settings_string_provider.dart'
    as _i96;
import 'package:itrust/features/settings/infrastructure/domain_providers/account_provider/account_provider.dart'
    as _i112;
import 'package:itrust/features/settings/infrastructure/json_converters/change_personal_info_response_json_converter.dart'
    as _i52;
import 'package:itrust/features/settings/infrastructure/json_converters/get_devices_response_json_converter.dart'
    as _i50;
import 'package:itrust/features/settings/infrastructure/third_party/mapster_registrar.dart'
    as _i94;
import 'package:itrust/features/user_wall/application/coordinators/coordinators.dart'
    as _i231;
import 'package:itrust/features/user_wall/application/coordinators/user_wall_coordinator.dart'
    as _i199;
import 'package:itrust/features/user_wall/application/providers/user_info_string_provider.dart'
    as _i105;
import 'package:itrust/features/user_wall/application/providers/user_posts_string_provider.dart'
    as _i107;
import 'package:itrust/features/user_wall/application/stores/user_info/user_info_store.dart'
    as _i230;
import 'package:itrust/features/user_wall/application/stores/user_posts/user_posts_store.dart'
    as _i228;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_info_string_provider.dart'
    as _i106;
import 'package:itrust/features/user_wall/infrastructure/app_providers/user_posts_string_provider.dart'
    as _i108;
import 'package:itrust/main/application/coordinators/home_coordinator.dart'
    as _i175;
import 'package:itrust/main/application/stores/home/home_store.dart' as _i177;
import 'package:itrust/main/infrastructure/coordinators/account_settings_coordinator.dart'
    as _i201;
import 'package:itrust/main/infrastructure/coordinators/change_personal_info_coordinator.dart'
    as _i204;
import 'package:itrust/main/infrastructure/coordinators/comment_coordinator.dart'
    as _i208;
import 'package:itrust/main/infrastructure/coordinators/devices_coordinator.dart'
    as _i214;
import 'package:itrust/main/infrastructure/coordinators/feed_coordinator.dart'
    as _i216;
import 'package:itrust/main/infrastructure/coordinators/friend_bids_coordinator.dart'
    as _i220;
import 'package:itrust/main/infrastructure/coordinators/home_coordinator.dart'
    as _i176;
import 'package:itrust/main/infrastructure/coordinators/log_in_coordinator.dart'
    as _i179;
import 'package:itrust/main/infrastructure/coordinators/menu_coordinator.dart'
    as _i182;
import 'package:itrust/main/infrastructure/coordinators/people_coordinator.dart'
    as _i187;
import 'package:itrust/main/infrastructure/coordinators/post_coordinator.dart'
    as _i188;
import 'package:itrust/main/infrastructure/coordinators/register_coordinator.dart'
    as _i189;
import 'package:itrust/main/infrastructure/coordinators/rules_coordinator.dart'
    as _i192;
import 'package:itrust/main/infrastructure/coordinators/settings_coordinator.dart'
    as _i195;
import 'package:itrust/main/infrastructure/coordinators/user_wall_coordinator.dart'
    as _i200;
import 'package:itrust/main/infrastructure/json_converters/problem_details_json_converter.dart'
    as _i66;
import 'package:itrust/main/infrastructure/third_party/hive_module.dart' as _i3;
import 'package:itrust/repositories/implementations/chat_repository.dart'
    as _i7;
import 'package:itrust/repositories/implementations/comment_repository.dart'
    as _i11;
import 'package:itrust/repositories/implementations/end_user_repository.dart'
    as _i20;
import 'package:itrust/repositories/implementations/post_repository.dart'
    as _i84;
import 'package:itrust/repositories/implementations/staff_user_repository.dart'
    as _i98;
import 'package:itrust/repositories/implementations/token_repository.dart'
    as _i102;
import 'package:itrust/repositories/interfaces/chat_repository.dart' as _i6;
import 'package:itrust/repositories/interfaces/comment_repository.dart' as _i10;
import 'package:itrust/repositories/interfaces/end_user_repository.dart'
    as _i19;
import 'package:itrust/repositories/interfaces/interfaces.dart' as _i155;
import 'package:itrust/repositories/interfaces/post_repository.dart' as _i83;
import 'package:itrust/repositories/interfaces/staff_user_repository.dart'
    as _i97;
import 'package:itrust/repositories/interfaces/token_repository.dart' as _i101;
import 'package:itrust/utils/server_settings.dart' as _i93;
import 'package:itrust/utils/utils.dart' as _i116;
import 'package:json_annotation/json_annotation.dart' as _i32;
import 'package:mapster/mapster.dart' as _i74;
import 'package:problem_details/problem_details.dart' as _i65;

import '../../../env/env_module.dart' as _i232;
import '../router/router.dart' as _i233;
import '../third_party/device_info_plus_module.dart' as _i234;
import '../third_party/dio_module.dart' as _i235;
import '../third_party/mapster_module.dart' as _i236;
import '../third_party/secure_storage_module.dart' as _i237;

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
  gh.lazySingleton<_i6.ChatRepository>(
    () => _i7.DevChatRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i8.ChatService>(_i8.ChatService());
  gh.factory<_i9.ChatStore>(
      () => _i9.ChatStore(chatService: gh<_i8.ChatService>()));
  gh.singleton<_i10.CommentRepository>(
    _i11.DevCommentRepository(),
    registerFor: {_dev},
  );
  gh.factory<_i12.ConnectionStore>(() => _i12.ConnectionStore());
  gh.singleton<_i13.DateTimeProvider>(_i14.ProdDateTimeProvider());
  gh.singleton<_i15.DeviceInfoPlugin>(deviceInfoPlusModule.deviceInfoPlugin);
  gh.singleton<_i16.DeviceInfoProvider>(_i17.ProdDeviceInfoProvider(
      deviceInfoPlugin: gh<_i15.DeviceInfoPlugin>()));
  gh.singleton<_i18.Dio>(dioModule.dio);
  await gh.singletonAsync<_i19.EndUserRepository>(
    () {
      final i = _i20.ProdEndUserRepository();
      return i.init().then((_) => i);
    },
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i21.FlutterSecureStorage>(secureStorageModule.storage);
  gh.singleton<_i22.FormattedDateProvider>(_i23.ProdFormattedDateProvider(
      dateTimeProvider: gh<_i13.DateTimeProvider>()));
  gh.singleton<_i24.GlobalKey<_i24.NavigatorState>>(routerModule.rootKey);
  gh.singleton<_i25.JsonConverter<_i26.GetTagsResponse, Map<String, Object?>>>(
      _i27.GetTagsResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i28.VerifyTokenResponse, Map<String, Object?>>>(
      _i29.VerifyTokenResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i30.UsersResponse, Map<String, Object?>>>(
      _i31.UsersResponseJsonConverter());
  gh.singleton<_i32.JsonConverter<_i33.RegisterResponse, Map<String, Object?>>>(
      _i34.RegisterResponseJsonConverter());
  gh.singleton<
      _i25.JsonConverter<_i35.FriendBidsAmountResponse,
          Map<String, Object?>>>(_i36.FriendBidsAmountResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i37.ChatsResponse, Map<String, Object?>>>(
      _i38.ChatsResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i39.RulesResponse, Map<String, Object?>>>(
      _i40.RulesResponseJsonConverter());
  gh.singleton<
          _i32.JsonConverter<_i41.RefreshTokenResponse, Map<String, Object?>>>(
      _i42.RefreshTokenResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i43.PostResponse, Map<String, Object?>>>(
      _i44.PostResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i45.PostCommentResponse, Map<String, Object?>>>(
      _i46.PostCommentResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i47.PostCommentsResponse, Map<String, Object?>>>(
      _i48.PostCommentsResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i49.GetDevicesResponse, Map<String, Object?>>>(
      _i50.GetDevicesResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i51.ChangePersonalInfoResponse,
              Map<String, Object?>>>(
      _i52.ChangePersonalInfoResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i53.PostsResponse, Map<String, Object?>>>(
      _i54.PostsResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i55.LogOutResponse, Map<String, Object?>>>(
      _i56.LogOutResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i57.LogInResponse, Map<String, Object?>>>(
      _i58.LogInResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i59.GetUserByIDResponse, Map<String, Object?>>>(
      _i60.GetUserByIDResponseJsonConverter());
  gh.singleton<
          _i25.JsonConverter<_i61.PeopleAmountResponse, Map<String, Object?>>>(
      _i62.PeopleAmountResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i63.EndUsersResponse, Map<String, Object?>>>(
      _i64.EndUsersResponseJsonConverter());
  gh.singleton<_i25.JsonConverter<_i65.ProblemDetails, Map<String, Object?>>>(
      _i66.ProblemDetailsJsonConverter());
  gh.singleton<_i25.JsonConverter<_i67.UserInfoResponse, Map<String, Object?>>>(
      _i68.UserInfoResponseJsonConverter());
  gh.singleton<_i69.LockService>(_i69.LockService());
  gh.factory<_i70.LockStore>(
      () => _i70.LockStore(lockService: gh<_i69.LockService>()));
  gh.singleton<_i71.LogInStringProvider>(_i72.ProdLogInStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i74.Mapster>(mapsterModule.mapster);
  gh.singleton<_i75.MenuStringProvider>(_i76.ProdMenuStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i77.MessageService>(_i77.MessageService());
  gh.singleton<_i78.PeopleStringProvider>(_i79.ProdPeopleStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i80.PostCommentStringProvider>(
      _i81.ProdPostCommentStringProvider(
          navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i82.PostMapsterRegistrar>(
      _i82.PostMapsterRegistrar(gh<_i74.Mapster>())..register());
  gh.singleton<_i83.PostRepository>(
    _i84.DevPostRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i85.PostStringProvider>(_i86.ProdPostStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i87.RegisterStringProvider>(_i88.ProdRegisterStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i89.RulesStringProvider>(_i90.ProdRulesStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  await gh.singletonAsync<_i91.ServerExceptionProvider>(
    () => _i92.ProdServerExceptionProvider.create(),
    preResolve: true,
  );
  gh.singleton<_i93.ServerSettings>(envModule.serverSettings);
  gh.singleton<_i94.SettingsMapsterRegistrar>(
      _i94.SettingsMapsterRegistrar(gh<_i74.Mapster>())..register());
  gh.singleton<_i95.SettingsStringProvider>(_i96.ProdSettingsStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i97.StaffUserRepository>(
    _i98.DevStaffUserRepository(),
    registerFor: {_dev},
  );
  gh.singleton<_i99.SuffixNumberProvider>(_i100.ProdSuffixNumberProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i101.TokenRepository>(_i102.ProdTokenRepository(
    dio: gh<_i18.Dio>(),
    secureStorage: gh<_i21.FlutterSecureStorage>(),
  ));
  gh.singleton<_i103.UserInfoProvider>(_i104.ProdUserInfoProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i105.UserInfoStringProvider>(_i106.ProdUserInfoStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i107.UserPostsStringProvider>(_i108.ProdUserPostsStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i109.UserProvider>(_i110.ProdUserProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i111.AccountProvider>(_i112.ProdAccountProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i16.AuthExceptionProvider>(
      _i113.ProdAuthExceptionProvider(gh<_i16.ServerExceptionProvider>()));
  gh.singleton<_i114.AuthProvider>(_i115.ProdAuthProvider(
    gh<_i18.Dio>(),
    gh<_i116.ServerSettings>(),
  ));
  gh.singleton<_i99.BeautifiedNumberProvider>(
      _i117.ProdBeautifiedNumberProvider(
          suffixNumberProvider: gh<_i99.SuffixNumberProvider>()));
  gh.singleton<_i118.CategoryStringProvider>(_i119.ProdCategoryStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i120.ChangePersonalInfoStringProvider>(
      _i121.ProdChangePersonalInfoStringProvider(
          navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i122.ChatListProvider>(_i123.ProdChatListProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i124.ChatListStringProvider>(_i125.ProdChatListStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i126.CommentProvider>(_i127.ProdCommentProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i128.CommentReplyStringProvider>(
      _i129.ProdCommentReplyStringProvider(
          navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i130.CommentStringProvider>(_i131.ProdCommentStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i132.CommonMapsterRegistrar>(
      _i132.CommonMapsterRegistrar(gh<_i74.Mapster>())..register());
  gh.singleton<_i133.FeedProvider>(_i134.ProdFeedProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i135.FeedStringProvider>(_i136.ProdFeedStringProvider(
      navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i137.FriendBidsProvider>(_i138.ProdFriendBidsProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i139.FriendBidsStringProvider>(
      _i140.ProdFriendBidsStringProvider(
          navigatorKey: gh<_i73.GlobalKey<_i73.NavigatorState>>()));
  gh.singleton<_i141.KeepFreshTokenExceptionProvider>(
      _i142.ProdKeepFreshTokenExceptionProvider(
          gh<_i91.ServerExceptionProvider>()));
  gh.singleton<_i143.KeepFreshTokenProvider>(_i144.ProdKeepFreshTokenProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i145.MediaUrlCreator>(
      _i145.MediaUrlCreator(serverSettings: gh<_i93.ServerSettings>()));
  gh.singleton<_i146.PeopleProvider>(_i147.ProdPeopleProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i148.PostProvider>(_i149.ProdPostProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i150.RulesProvider>(_i151.ProdRulesProvider(
    gh<_i18.Dio>(),
    gh<_i93.ServerSettings>(),
  ));
  gh.singleton<_i152.RulesService>(
      _i152.RulesService(rulesProvider: gh<_i150.RulesProvider>()));
  gh.singleton<_i16.ServerAvailabilityProvider>(
      _i153.ProdServerAvailabilityProvider(gh<_i93.ServerSettings>()));
  gh.singleton<_i154.KeepFreshTokenService>(_i154.KeepFreshTokenService(
    tokenService: gh<_i155.TokenRepository>(),
    keepFreshTokenProvider: gh<_i143.KeepFreshTokenProvider>(),
    authStatusProvider: gh<_i4.AuthStatusProvider>(),
    deviceInfoProvider: gh<_i156.DeviceInfoProvider>(),
    keepFreshTokenExceptionProvider:
        gh<_i141.KeepFreshTokenExceptionProvider>(),
    serverAvailabilityProvider: gh<_i157.ServerAvailabilityProvider>(),
    endUserRepository: gh<_i155.EndUserRepository>(),
  ));
  gh.singleton<_i158.PeopleService>(_i158.PeopleService(
    keepFreshTokenService: gh<_i154.KeepFreshTokenService>(),
    peopleProvider: gh<_i146.PeopleProvider>(),
    endUserRepository: gh<_i155.EndUserRepository>(),
    staffUserRepository: gh<_i155.StaffUserRepository>(),
  ));
  gh.singleton<_i159.PostService>(_i159.PostService(
    keepFreshTokenService: gh<_i154.KeepFreshTokenService>(),
    postProvider: gh<_i148.PostProvider>(),
    postRepository: gh<_i155.PostRepository>(),
    commentRepository: gh<_i155.CommentRepository>(),
  ));
  gh.factory<_i160.SubscriptionsStore>(() => _i160.SubscriptionsStore(
        peopleService: gh<_i158.PeopleService>(),
        peopleStringProvider: gh<_i78.PeopleStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i161.UserInfoService>(_i161.UserInfoService(
    keepFreshTokenService: gh<_i154.KeepFreshTokenService>(),
    userInfoProvider: gh<_i103.UserInfoProvider>(),
  ));
  gh.singleton<_i162.UserService>(_i162.UserService(
    keepFreshTokenService: gh<_i154.KeepFreshTokenService>(),
    userProvider: gh<_i109.UserProvider>(),
    endUserRepository: gh<_i155.EndUserRepository>(),
    staffUserRepository: gh<_i155.StaffUserRepository>(),
  ));
  gh.singleton<_i163.AccountService>(
    _i163.AccountService(
      authStatusProvider: gh<_i16.AuthStatusProvider>(),
      userProvider: gh<_i16.UserProvider>(),
      accountProvider: gh<_i111.AccountProvider>(),
      keepFreshTokenService: gh<_i16.KeepFreshTokenService>(),
      endUserRepository: gh<_i155.EndUserRepository>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i164.AllUsersStore>(() => _i164.AllUsersStore(
        peopleService: gh<_i158.PeopleService>(),
        peopleStringProvider: gh<_i78.PeopleStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  await gh.singletonAsync<_i165.AuthService>(
    () {
      final i = _i165.AuthService(
        serverAvailabilityProvider: gh<_i157.ServerAvailabilityProvider>(),
        authProvider: gh<_i114.AuthProvider>(),
        tokenService: gh<_i155.TokenRepository>(),
        endUserRepository: gh<_i155.EndUserRepository>(),
        authExceptionProvider: gh<_i166.AuthExceptionProvider>(),
        deviceInfoProvider: gh<_i156.DeviceInfoProvider>(),
        keepFreshTokenService: gh<_i154.KeepFreshTokenService>(),
        authStatusProvider: gh<_i4.AuthStatusProvider>(),
      );
      return i.init().then((_) => i);
    },
    preResolve: true,
  );
  gh.singleton<_i167.CategoryService>(_i167.CategoryService(
    keepFreshTokenService: gh<_i154.KeepFreshTokenService>(),
    feedProvider: gh<_i133.FeedProvider>(),
  ));
  gh.singleton<_i168.ChatListService>(_i168.ChatListService(
    keepFreshTokenService: gh<_i154.KeepFreshTokenService>(),
    chatListProvider: gh<_i122.ChatListProvider>(),
    chatRepository: gh<_i155.ChatRepository>(),
  ));
  gh.singleton<_i169.ChatListStore>(_i169.ChatListStore(
    chatListService: gh<_i16.ChatListService>(),
    messageService: gh<_i16.MessageService>(),
    userService: gh<_i16.UserService>(),
    endUserRepository: gh<_i155.EndUserRepository>(),
    chatListStringProvider: gh<_i99.ChatListStringProvider>(),
    mapster: gh<_i74.Mapster>(),
  ));
  gh.singleton<_i170.CommentService>(_i170.CommentService(
    keepFreshTokenService: gh<_i41.KeepFreshTokenService>(),
    commentProvider: gh<_i126.CommentProvider>(),
    commentRepository: gh<_i155.CommentRepository>(),
  ));
  gh.singleton<_i171.FeedService>(_i171.FeedService(
    keepFreshTokenService: gh<_i41.KeepFreshTokenService>(),
    feedProvider: gh<_i133.FeedProvider>(),
    postRepository: gh<_i155.PostRepository>(),
  ));
  gh.singleton<_i172.FriendBidsService>(_i172.FriendBidsService(
    keepFreshTokenService: gh<_i16.KeepFreshTokenService>(),
    friendBidsProvider: gh<_i137.FriendBidsProvider>(),
    endUserRepository: gh<_i155.EndUserRepository>(),
  ));
  gh.singleton<_i173.GoRouter>(routerModule.router(
    gh<_i24.GlobalKey<_i24.NavigatorState>>(),
    gh<_i174.AuthService>(),
  ));
  gh.singleton<_i175.HomeCoordinator>(
    _i176.ProdHomeCoordinator(goRouter: gh<_i173.GoRouter>())..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i177.HomeStore>(
      () => _i177.HomeStore(homeCoordinator: gh<_i175.HomeCoordinator>()));
  gh.factory<_i178.InboxFriendBidsStore>(() => _i178.InboxFriendBidsStore(
        friendBidsService: gh<_i172.FriendBidsService>(),
        friendBidsStringProvider: gh<_i139.FriendBidsStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i174.LogInCoordinator>(
    _i179.ProdLogInCoordinator(
      goRouter: gh<_i173.GoRouter>(),
      authStatusProvider: gh<_i174.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i180.LogInStore>(() => _i180.LogInStore(
        authService: gh<_i16.AuthService>(),
        logInCoordinator: gh<_i181.LogInCoordinator>(),
        logInStringProvider: gh<_i71.LogInStringProvider>(),
      ));
  gh.singleton<_i174.MenuCoordinator>(
      _i182.ProdMenuCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.singleton<_i183.MenuStore>(_i183.MenuStore(
    menuCoordinator: gh<_i184.MenuCoordinator>(),
    menuStringProvider: gh<_i75.MenuStringProvider>(),
    endUserRepository: gh<_i155.EndUserRepository>(),
  ));
  gh.factory<_i185.OutboxFriendBidsStore>(() => _i185.OutboxFriendBidsStore(
        friendBidsService: gh<_i172.FriendBidsService>(),
        friendBidsStringProvider: gh<_i139.FriendBidsStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i186.PeopleCoordinator>(
      _i187.ProdPeopleCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.singleton<_i174.PostCoordinator>(
      _i188.ProdPostCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.singleton<_i174.RegisterCoordinator>(
    _i189.ProdRegisterCoordinator(
      goRouter: gh<_i173.GoRouter>(),
      authStatusProvider: gh<_i174.AuthStatusProvider>(),
    )..init(),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i190.RegisterStore>(() => _i190.RegisterStore(
        authService: gh<_i16.AuthService>(),
        registerCoordinator: gh<_i191.RegisterCoordinator>(),
        registerStringProvider: gh<_i87.RegisterStringProvider>(),
      ));
  gh.singleton<_i174.RulesCoordinator>(
      _i192.ProdRulesCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.factory<_i193.RulesStore>(() => _i193.RulesStore(
        rulesService: gh<_i152.RulesService>(),
        rulesCoordinator: gh<_i194.RulesCoordinator>(),
        rulesStringProvider: gh<_i89.RulesStringProvider>(),
      ));
  gh.singleton<_i174.SettingsCoordinator>(
      _i195.ProdSettingsCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.singleton<_i196.SettingsStore>(_i196.SettingsStore(
    authService: gh<_i41.AuthService>(),
    settingsCoordinator: gh<_i197.SettingsCoordinator>(),
    settingsStringProvider: gh<_i95.SettingsStringProvider>(),
    accountService: gh<_i163.AccountService>(),
    mapster: gh<_i74.Mapster>(),
  ));
  gh.factory<_i198.SubscribersStore>(() => _i198.SubscribersStore(
        peopleService: gh<_i158.PeopleService>(),
        peopleStringProvider: gh<_i78.PeopleStringProvider>(),
        coordinator: gh<_i186.PeopleCoordinator>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i199.UserWallCoordinator>(
      _i200.ProdUserWallCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.singleton<_i174.AccountSettingsCoordinator>(
      _i201.ProdAccountSettingsCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.factory<_i202.AccountSettingsStore>(() => _i202.AccountSettingsStore(
      accountSettingsCoordinator: gh<_i203.AccountSettingsCoordinator>()));
  gh.singleton<_i174.ChangePersonalInfoCoordinator>(
      _i204.ProdChangePersonalInfoCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.factory<_i205.ChangePersonalInfoStore>(() => _i205.ChangePersonalInfoStore(
        accountService: gh<_i206.AccountService>(),
        changePersonalInfoCoordinator:
            gh<_i207.ChangePersonalInfoCoordinator>(),
        changePersonalInfoStringProvider:
            gh<_i120.ChangePersonalInfoStringProvider>(),
      ));
  gh.singleton<_i174.CommentCoordinator>(
      _i208.ProdCommentCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.factory<_i209.CommentReplyStore>(() => _i209.CommentReplyStore(
        commentService: gh<_i210.CommentService>(),
        userService: gh<_i41.UserService>(),
        commentCoordinator: gh<_i211.CommentCoordinator>(),
        commentReplyStringProvider: gh<_i128.CommentReplyStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.factory<_i212.CommentStore>(() => _i212.CommentStore(
        commentReplyStore: gh<_i209.CommentReplyStore>(),
        commentService: gh<_i210.CommentService>(),
        userService: gh<_i41.UserService>(),
        commentCoordinator: gh<_i211.CommentCoordinator>(),
        commentStringProvider: gh<_i130.CommentStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i213.DevicesCoordinator>(
      _i214.ProdDevicesCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.singleton<_i215.DevicesStore>(_i215.DevicesStore(
    devicesCoordinator: gh<_i213.DevicesCoordinator>(),
    accountService: gh<_i163.AccountService>(),
    mapster: gh<_i74.Mapster>(),
  ));
  gh.singleton<_i174.FeedCoordinator>(
      _i216.ProdFeedCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.factory<_i217.FeedStore>(() => _i217.FeedStore(
        feedService: gh<_i171.FeedService>(),
        userService: gh<_i16.UserService>(),
        postService: gh<_i16.PostService>(),
        feedCoordinator: gh<_i218.FeedCoordinator>(),
        feedStringProvider: gh<_i135.FeedStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i219.FriendBidsCoordinator>(
      _i220.ProdFriendBidsCoordinator(goRouter: gh<_i173.GoRouter>()));
  gh.factory<_i221.FriendBidsStore>(() => _i221.FriendBidsStore(
        inboxStore: gh<_i178.InboxFriendBidsStore>(),
        outboxStore: gh<_i185.OutboxFriendBidsStore>(),
        friendBidsService: gh<_i172.FriendBidsService>(),
        userInfoService: gh<_i16.UserInfoService>(),
        friendBidsStringProvider: gh<_i139.FriendBidsStringProvider>(),
        beautifiedNumberProvider: gh<_i99.BeautifiedNumberProvider>(),
        coordinator: gh<_i219.FriendBidsCoordinator>(),
        endUserRepository: gh<_i155.EndUserRepository>(),
      ));
  gh.factory<_i222.FriendsStore>(() => _i222.FriendsStore(
        peopleService: gh<_i158.PeopleService>(),
        peopleStringProvider: gh<_i78.PeopleStringProvider>(),
        coordinator: gh<_i186.PeopleCoordinator>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.factory<_i223.PeopleStore>(() => _i223.PeopleStore(
        allUsersStore: gh<_i164.AllUsersStore>(),
        friendsStore: gh<_i222.FriendsStore>(),
        subscribersStore: gh<_i198.SubscribersStore>(),
        subscriptionsStore: gh<_i160.SubscriptionsStore>(),
        peopleService: gh<_i158.PeopleService>(),
        peopleStringProvider: gh<_i78.PeopleStringProvider>(),
        coordinator: gh<_i186.PeopleCoordinator>(),
        beautifiedNumberProvider: gh<_i224.BeautifiedNumberProvider>(),
        endUserRepository: gh<_i19.EndUserRepository>(),
      ));
  gh.factory<_i225.PostCommentStore>(() => _i225.PostCommentStore(
        commentService: gh<_i210.CommentService>(),
        userService: gh<_i41.UserService>(),
        commentCoordinator: gh<_i211.CommentCoordinator>(),
        postCommentStringProvider: gh<_i80.PostCommentStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.factory<_i226.PostStore>(() => _i226.PostStore(
        postCommentStore: gh<_i225.PostCommentStore>(),
        postService: gh<_i41.PostService>(),
        userService: gh<_i41.UserService>(),
        postCoordinator: gh<_i227.PostCoordinator>(),
        postStringProvider: gh<_i85.PostStringProvider>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.factory<_i228.UserPostsStore>(() => _i228.UserPostsStore(
        postService: gh<_i159.PostService>(),
        userService: gh<_i162.UserService>(),
        coordinator: gh<_i199.UserWallCoordinator>(),
        userPostsStringProvider: gh<_i107.UserPostsStringProvider>(),
        endUserRepository: gh<_i19.EndUserRepository>(),
        mapster: gh<_i74.Mapster>(),
      ));
  gh.singleton<_i229.CategoryStore>(_i229.CategoryStore(
    feedStore: gh<_i217.FeedStore>(),
    categoryService: gh<_i167.CategoryService>(),
    categoryStringProvider: gh<_i118.CategoryStringProvider>(),
  ));
  gh.factory<_i230.UserInfoStore>(() => _i230.UserInfoStore(
        userPostsStore: gh<_i228.UserPostsStore>(),
        userInfoService: gh<_i41.UserInfoService>(),
        userInfoStringProvider: gh<_i105.UserInfoStringProvider>(),
        coordinator: gh<_i231.UserWallCoordinator>(),
        endUserRepository: gh<_i19.EndUserRepository>(),
        mapster: gh<_i74.Mapster>(),
      ));
  return getIt;
}

class _$EnvModule extends _i232.EnvModule {}

class _$RouterModule extends _i233.RouterModule {}

class _$DeviceInfoPlusModule extends _i234.DeviceInfoPlusModule {}

class _$DioModule extends _i235.DioModule {}

class _$MapsterModule extends _i236.MapsterModule {}

class _$SecureStorageModule extends _i237.SecureStorageModule {}
