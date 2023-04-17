import 'package:injectable/injectable.dart';

import '../../../../utils/server_settings.dart';
import '../../domain/value_objects/media_id/media_id.dart';

const _subRoute = 'media/';

@singleton
class MediaUrlCreator {
  MediaUrlCreator({
    required ServerSettings serverSettings,
  }) : _host = '${serverSettings.baseUri}$_subRoute';

  final String _host;

  String create(MediaID id) => '$_host${id.str}';
}
