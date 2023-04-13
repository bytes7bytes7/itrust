// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rules_provider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProdRulesProvider implements ProdRulesProvider {
  _ProdRulesProvider(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<JsonEitherWrapper<ProblemDetails, RulesResponse>> getRules() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JsonEitherWrapper<ProblemDetails, RulesResponse>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JsonEitherWrapper<ProblemDetails, RulesResponse>.fromJson(
        _result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
