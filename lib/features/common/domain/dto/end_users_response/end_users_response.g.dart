// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EndUsersResponse _$EndUsersResponseFromJson(Map<String, dynamic> json) =>
    EndUsersResponse(
      users: (json['users'] as List<dynamic>)
          .map((e) => EndUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EndUsersResponseToJson(EndUsersResponse instance) =>
    <String, dynamic>{
      'users': instance.users.map((e) => e.toJson()).toList(),
    };
