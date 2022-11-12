import 'package:drift/drift.dart';

class ChatBurns extends Table {
  TextColumn get chatID => text().unique()();

  TextColumn get burnType => text()();
}
