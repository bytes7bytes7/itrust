import 'package:drift/drift.dart';

@DataClassName('UserSearch')
class UserSearches extends Table {
  TextColumn get query => text()();
}
