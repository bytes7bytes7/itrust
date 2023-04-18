// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_provider.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ProdPeopleProvider implements ProdPeopleProvider {
  _ProdPeopleProvider(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<JsonEitherWrapper<ProblemDetails, PeopleAmountResponse>>
      getPeopleAmount() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JsonEitherWrapper<ProblemDetails, PeopleAmountResponse>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/people_amount',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value =
        JsonEitherWrapper<ProblemDetails, PeopleAmountResponse>.fromJson(
            _result.data!);
    return value;
  }

  @override
  Future<JsonEitherWrapper<ProblemDetails, UsersResponse>> getAllUsers(
      {lastUserID}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'lastUserID': lastUserID};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JsonEitherWrapper<ProblemDetails, UsersResponse>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/all',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JsonEitherWrapper<ProblemDetails, UsersResponse>.fromJson(
        _result.data!);
    return value;
  }

  @override
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getFriends({
    required userID,
    lastUserID,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'userID': userID,
      r'lastUserID': lastUserID,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JsonEitherWrapper<ProblemDetails, EndUsersResponse>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/friends',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JsonEitherWrapper<ProblemDetails, EndUsersResponse>.fromJson(
        _result.data!);
    return value;
  }

  @override
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getSubscribers({
    required userID,
    lastUserID,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'userID': userID,
      r'lastUserID': lastUserID,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JsonEitherWrapper<ProblemDetails, EndUsersResponse>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/subscribers',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JsonEitherWrapper<ProblemDetails, EndUsersResponse>.fromJson(
        _result.data!);
    return value;
  }

  @override
  Future<JsonEitherWrapper<ProblemDetails, EndUsersResponse>> getSubscriptions({
    required userID,
    lastUserID,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'userID': userID,
      r'lastUserID': lastUserID,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<JsonEitherWrapper<ProblemDetails, EndUsersResponse>>(
            Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
                .compose(
                  _dio.options,
                  '/subscriptions',
                  queryParameters: queryParameters,
                  data: _data,
                )
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = JsonEitherWrapper<ProblemDetails, EndUsersResponse>.fromJson(
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
