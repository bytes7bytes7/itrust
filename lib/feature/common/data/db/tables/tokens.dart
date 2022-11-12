import 'package:drift/drift.dart';

class Tokens extends Table {
  TextColumn get access => text()();

  TextColumn get refresh => text()();
}
