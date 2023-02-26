// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_exception_provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProdServerExceptionProvider _$ProdServerExceptionProviderFromJson(
        Map<String, dynamic> json) =>
    ProdServerExceptionProvider(
      emailIsAlreadyInUse: json['email_is_already_in_use'] as String,
      invalidCredentials: json['invalid_credentials'] as String,
      tokenExpired: json['token_expired'] as String,
    );

Map<String, dynamic> _$ProdServerExceptionProviderToJson(
        ProdServerExceptionProvider instance) =>
    <String, dynamic>{
      'email_is_already_in_use': instance.emailIsAlreadyInUse,
      'invalid_credentials': instance.invalidCredentials,
      'token_expired': instance.tokenExpired,
    };
