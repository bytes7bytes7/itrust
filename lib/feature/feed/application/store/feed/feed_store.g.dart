// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FeedStore on _FeedStore, Store {
  late final _$_isLoadingAtom =
      Atom(name: '_FeedStore._isLoading', context: context);

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

  late final _$_errorAtom = Atom(name: '_FeedStore._error', context: context);

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

  late final _$_postsAtom = Atom(name: '_FeedStore._posts', context: context);

  List<Post> get posts {
    _$_postsAtom.reportRead();
    return super._posts;
  }

  @override
  List<Post> get _posts => posts;

  @override
  set _posts(List<Post> value) {
    _$_postsAtom.reportWrite(value, super._posts, () {
      super._posts = value;
    });
  }

  @override
  String toString() {
    return '''

    ''';
  }
}