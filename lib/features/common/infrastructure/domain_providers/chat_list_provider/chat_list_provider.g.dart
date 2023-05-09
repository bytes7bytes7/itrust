// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_list_provider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProdChatListProvider implements ProdChatListProvider {
  _ProdChatListProvider(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<JsonEitherWrapper<ProblemDetails, ChatsResponse>> getChats(
      {lastChatID}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lastChatID': lastChatID};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JsonEitherWrapper<ProblemDetails, ChatsResponse>>(
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
    final value = JsonEitherWrapper<ProblemDetails, ChatsResponse>.fromJson(
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
