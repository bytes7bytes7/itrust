import 'package:drift/drift.dart';

class ChatRoles extends Table {
  TextColumn get chatID => text()();

  TextColumn get participantID => text()();

  TextColumn get role => text()();
}
