import 'package:drift/drift.dart';

class Messages extends Table {
  TextColumn get id => text()();

  TextColumn get chatID => text()();

  TextColumn get senderID => text()();

  // I cannot create `text` getter, so I made `planText`
  TextColumn get plainText => text().named('text')();

  DateTimeColumn get sentAt => dateTime()();

  DateTimeColumn get modifiedAt => dateTime().nullable()();

  DateTimeColumn get willBeBurntAt => dateTime().nullable()();

  BoolColumn get isRead => boolean()();
}
