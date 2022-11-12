import 'package:drift/drift.dart';

class ChatParticipants extends Table {
  TextColumn get chatID => text()();

  TextColumn get participantID => text()();
}
