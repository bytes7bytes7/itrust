import 'package:drift/drift.dart';

class Accounts extends Table {
  TextColumn get userID => text().unique()();
}
