import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:web_socket_channel/io.dart';

import '../../../../utils/json_either_wrapper.dart';
import '../../../../utils/server_settings.dart';
import '../../domain/dto/message_event_response/message_event_response.dart';
import '../../domain/providers/chat_listen_provider.dart';

const _subRoute = 'chats';

@Singleton(as: ChatListenProvider)
class ProdChatListenProvider implements ChatListenProvider {
  ProdChatListenProvider(
    this._dio,
    ServerSettings serverSettings,
  ) : _baseUrl = '${serverSettings.wsBaseUri}$_subRoute';

  final Dio _dio;
  final String _baseUrl;

  final _jsonDecoder = const JsonDecoder();

  @override
  Future<Stream<JsonEitherWrapper<ProblemDetails, MessageEventResponse>>>
      listenMessageEvents({
    required String chatID,
  }) async {
    final url = '$_baseUrl/$chatID/listen';

    // TODO: use HTMLWebSocketChannel for web version
    final channel = IOWebSocketChannel.connect(
      Uri.parse(url),
      headers: _dio.options.headers,
    );

    return channel.stream.map((event) {
      final jsonData = _jsonDecoder.convert(event);

      final value =
          JsonEitherWrapper<ProblemDetails, MessageEventResponse>.fromJson(
        jsonData,
      );

      return value;
    });
  }
}
