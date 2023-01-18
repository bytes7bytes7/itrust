// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connection_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConnectionStore on _ConnectionStore, Store {
  late final _$connectionAtom =
      Atom(name: '_ConnectionStore.connection', context: context);

  @override
  ObservableStream<ConnectivityResult> get connection {
    _$connectionAtom.reportRead();
    return super.connection;
  }

  @override
  set connection(ObservableStream<ConnectivityResult> value) {
    _$connectionAtom.reportWrite(value, super.connection, () {
      super.connection = value;
    });
  }

  @override
  String toString() {
    return '''
connection: ${connection}
    ''';
  }
}
