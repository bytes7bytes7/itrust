// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_by_id_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserByIDResponse _$GetUserByIDResponseFromJson(Map<String, dynamic> json) =>
    GetUserByIDResponse(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetUserByIDResponseToJson(
        GetUserByIDResponse instance) =>
    <String, dynamic>{
      'user': instance.user.toJson(),
    };
