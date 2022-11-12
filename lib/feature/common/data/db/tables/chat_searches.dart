import 'package:drift/drift.dart';

@DataClassName('ChatSearch')
class ChatSearches extends Table {
  TextColumn get query => text()();
}
