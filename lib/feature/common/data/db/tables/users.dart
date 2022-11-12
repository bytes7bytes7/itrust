import 'package:drift/drift.dart';

class Users extends Table {
  TextColumn get id => text().unique()();

  TextColumn get name => text()();
}
