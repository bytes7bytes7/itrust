// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PostStore on _PostStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_PostStore._isLoading', context: context);

  bool get isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  bool get _isLoading => isLoading;

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_errorAtom = Atom(name: '_PostStore._error', context: context);

  String get error {
    _$_errorAtom.reportRead();
    return super._error;
  }

  @override
  String get _error => error;

  @override
  set _error(String value) {
    _$_errorAtom.reportWrite(value, super._error, () {
      super._error = value;
    });
  }

  late final _$_postIDAtom = Atom(name: '_PostStore._postID', context: context);

  String? get postID {
    _$_postIDAtom.reportRead();
    return super._postID;
  }

  @override
  String? get _postID => postID;

  @override
  set _postID(String? value) {
    _$_postIDAtom.reportWrite(value, super._postID, () {
      super._postID = value;
    });
  }

  late final _$_authorNameAtom =
      Atom(name: '_PostStore._authorName', context: context);

  String get authorName {
    _$_authorNameAtom.reportRead();
    return super._authorName;
  }

  @override
  String get _authorName => authorName;

  @override
  set _authorName(String value) {
    _$_authorNameAtom.reportWrite(value, super._authorName, () {
      super._authorName = value;
    });
  }

  late final _$_createdAtAtom =
      Atom(name: '_PostStore._createdAt', context: context);

  String get createdAt {
    _$_createdAtAtom.reportRead();
    return super._createdAt;
  }

  @override
  String get _createdAt => createdAt;

  @override
  set _createdAt(String value) {
    _$_createdAtAtom.reportWrite(value, super._createdAt, () {
      super._createdAt = value;
    });
  }

  late final _$_avatarUrlAtom =
      Atom(name: '_PostStore._avatarUrl', context: context);

  String? get avatarUrl {
    _$_avatarUrlAtom.reportRead();
    return super._avatarUrl;
  }

  @override
  String? get _avatarUrl => avatarUrl;

  @override
  set _avatarUrl(String? value) {
    _$_avatarUrlAtom.reportWrite(value, super._avatarUrl, () {
      super._avatarUrl = value;
    });
  }

  late final _$_mediaUrlsAtom =
      Atom(name: '_PostStore._mediaUrls', context: context);

  List<String> get mediaUrls {
    _$_mediaUrlsAtom.reportRead();
    return super._mediaUrls;
  }

  @override
  List<String> get _mediaUrls => mediaUrls;

  @override
  set _mediaUrls(List<String> value) {
    _$_mediaUrlsAtom.reportWrite(value, super._mediaUrls, () {
      super._mediaUrls = value;
    });
  }

  late final _$_textAtom = Atom(name: '_PostStore._text', context: context);

  String get text {
    _$_textAtom.reportRead();
    return super._text;
  }

  @override
  String get _text => text;

  @override
  set _text(String value) {
    _$_textAtom.reportWrite(value, super._text, () {
      super._text = value;
    });
  }

  late final _$_isLickedByMeAtom =
      Atom(name: '_PostStore._isLickedByMe', context: context);

  bool get isLickedByMe {
    _$_isLickedByMeAtom.reportRead();
    return super._isLickedByMe;
  }

  @override
  bool get _isLickedByMe => isLickedByMe;

  @override
  set _isLickedByMe(bool value) {
    _$_isLickedByMeAtom.reportWrite(value, super._isLickedByMe, () {
      super._isLickedByMe = value;
    });
  }

  late final _$_PostStoreActionController =
      ActionController(name: '_PostStore', context: context);

  @override
  void loadPost(String postID) {
    final _$actionInfo =
        _$_PostStoreActionController.startAction(name: '_PostStore.loadPost');
    try {
      return super.loadPost(postID);
    } finally {
      _$_PostStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onIsLickedPostChanged() {
    final _$actionInfo = _$_PostStoreActionController.startAction(
        name: '_PostStore.onIsLickedPostChanged');
    try {
      return super.onIsLickedPostChanged();
    } finally {
      _$_PostStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
