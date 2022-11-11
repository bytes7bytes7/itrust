import 'package:drift/drift.dart';

class AvatarUrls extends Table {
  TextColumn get userID => text()();

  TextColumn get url => text()();
}
