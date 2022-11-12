import 'package:drift/drift.dart';

class Chats extends Table {
  TextColumn get id => text().unique()();

  TextColumn get avatarUrl => text().nullable()();

  TextColumn get title => text()();

  TextColumn get lastMessageID => text()();

  IntColumn get unreadAmount => integer()();

  TextColumn get chatType => text()();
}
