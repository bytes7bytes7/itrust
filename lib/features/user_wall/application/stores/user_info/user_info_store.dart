import 'package:mobx/mobx.dart';

import '../../../../common/common.dart';
import '../../providers/user_info_string_provider.dart';

part 'user_info_store.g.dart';

class UserInfoStore = _UserInfoStore with _$UserInfoStore;

abstract class _UserInfoStore extends SyncStore with Store {
  _UserInfoStore({
    required UserInfoStringProvider userInfoStringProvider,
  }) : _userInfoStringProvider = userInfoStringProvider;

  final UserInfoStringProvider _userInfoStringProvider;

  @readonly
  bool _isLoading = false;

  @readonly
  String _error = '';

  @readonly
  String _userID = '';

  @action
  void loadInfo({required String userID}) {
    perform(
      () async {
        try {
          _userID = userID;
        } catch (e) {
          _error = _userInfoStringProvider.canNotLoadUserInfo;
        }
      },
      setIsLoading: (v) => _isLoading = v,
      removeError: () => _error = '',
    );
  }
}
