import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:problem_details/problem_details.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../../utils/json_either_wrapper.dart';
import '../../../../../utils/server_settings.dart';
import '../../../../common/domain/dto/chat_response/chat_response.dart';
import '../../../domain/providers/chat_provider.dart';

part 'chat_provider.g.dart';

const _route = '/chats/';

const _idParam = 'id';

@Singleton(as: ChatProvider)
@RestApi()
abstract class ProdChatProvider implements ChatProvider {
  @factoryMethod
  factory ProdChatProvider(Dio dio, ServerSettings settings) {
    return ProdChatProvider._(
      dio,
      baseUrl: '${settings.baseUri}$_route',
    );
  }

  factory ProdChatProvider._(
    Dio dio, {
    String baseUrl,
  }) = _ProdChatProvider;

  @override
  @GET('/{$_idParam}')
  Future<JsonEitherWrapper<ProblemDetails, ChatResponse>> getChat({
    @Path(_idParam) required String id,
  });
}
