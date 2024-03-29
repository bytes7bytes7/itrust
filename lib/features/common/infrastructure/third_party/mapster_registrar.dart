import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mapster/mapster.dart';

import '../../application/application.dart';
import '../mappers/mappers.dart';
import '../other/media_url_creator.dart';

final _getIt = GetIt.instance;

@singleton
class CommonMapsterRegistrar {
  const CommonMapsterRegistrar(this._mapster);

  final Mapster _mapster;

  @postConstruct
  void register() {
    _mapster
      ..register(
        MapperMeta.two(
          (input) => PostUserToPostVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => MediaToMediaVMMapper(
            input,
            mediaUrlCreator: _getIt.get<MediaUrlCreator>(),
          ),
        ),
      )
      ..register(
        MapperMeta.two(
          (input) => PostEndUserToPostVMMapper(
            input,
            formattedDateProvider: _getIt.get<FormattedDateProvider>(),
            beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.two(
          (input) => PostStaffUserToPostVM(
            input,
            formattedDateProvider: _getIt.get<FormattedDateProvider>(),
            beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => EndUserToEndUserVMMapper(
            input,
            formattedDateProvider: _getIt.get<FormattedDateProvider>(),
            beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => StaffUserToStaffUserVMMapper(
            input,
            beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => UserToUserVMMapper(
            input,
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => UserInfoToUserInfoVMMapper(
            input,
            beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
            mapster: _mapster,
          ),
        ),
      )
      ..register(
        MapperMeta.two((input) => ChatToChatVMMapper(input, mapster: _mapster)),
      )
      ..register(
        MapperMeta.two(
          (input) =>
              MonologueChatToMonologueChatVMMapper(input, mapster: _mapster),
        ),
      )
      ..register(
        MapperMeta.two(
          (input) => DialogueChatToDialogueChatVMMapper(
            input,
            mapster: _mapster,
            beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
          ),
        ),
      )
      ..register(
        MapperMeta.two(
          (input) => GroupChatToGroupChatVMMapper(
            input,
            mapster: _mapster,
            beautifiedNumberProvider: _getIt.get<BeautifiedNumberProvider>(),
          ),
        ),
      )
      ..register(
        MapperMeta.two(
          (input) => MessageToMessageVMMapper(input, mapster: _mapster),
        ),
      )
      ..register(
        MapperMeta.one(
          (input) => InfoMessageToInfoMessageVMMapper(
            input,
            formattedDateProvider: _getIt.get<FormattedDateProvider>(),
          ),
        ),
      )
      ..register(
        MapperMeta.two(
          (input) => UserMessageToUserMessageVMMapper(
            input,
            mapster: _mapster,
            formattedDateProvider: _getIt.get<FormattedDateProvider>(),
          ),
        ),
      );
  }
}
