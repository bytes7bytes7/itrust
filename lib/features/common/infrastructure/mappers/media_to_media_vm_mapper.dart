import 'package:mapster/mapster.dart';

import '../../application/view_models/media_vm/media_vm.dart';
import '../../domain/entities/media/media.dart';
import '../other/media_url_creator.dart';

class MediaToMediaVMMapper extends OneSourceMapper<Media, MediaVM> {
  MediaToMediaVMMapper(
    super.input, {
    required MediaUrlCreator mediaUrlCreator,
  }) : _mediaUrlCreator = mediaUrlCreator;

  final MediaUrlCreator _mediaUrlCreator;

  @override
  MediaVM map() {
    return MediaVM(
      id: _media.id.str,
      type: _media.type,
      url: _mediaUrlCreator.create(_media.id),
    );
  }

  Media get _media => source;
}
