import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../gen/assets.gen.dart';
import '../../../../../utils/typedef.dart';
import '../../../domain/providers/server_exception_provider.dart';

part 'server_exception_provider.g.dart';

@Singleton(as: ServerExceptionProvider)
@JsonSerializable(fieldRename: FieldRename.snake)
class ProdServerExceptionProvider implements ServerExceptionProvider {
  const ProdServerExceptionProvider({
    required this.emailIsAlreadyInUse,
    required this.invalidCredentials,
  });

  @override
  final String emailIsAlreadyInUse;

  @override
  final String invalidCredentials;

  @FactoryMethod(preResolve: true)
  static Future<ProdServerExceptionProvider> create() async {
    final rawJson = await rootBundle.loadString(Assets.json.serverExceptions);
    final map = jsonDecode(rawJson);

    return ProdServerExceptionProvider.fromJson(map);
  }

  factory ProdServerExceptionProvider.fromJson(JsonMap json) =>
      _$ProdServerExceptionProviderFromJson(json);

  JsonMap toJson() => _$ProdServerExceptionProviderToJson(this);
}
