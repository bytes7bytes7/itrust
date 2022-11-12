import 'package:drift/drift.dart';

class MediaUrls extends Table {
  TextColumn get messageID => text()();

  TextColumn get chatID => text()();

  TextColumn get url => text()();
}
