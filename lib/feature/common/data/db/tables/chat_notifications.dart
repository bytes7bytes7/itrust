import 'package:drift/drift.dart';

class ChatNotifications extends Table {
  TextColumn get chatID => text().unique()();

  TextColumn get muteType => text()();
}
