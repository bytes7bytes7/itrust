import 'package:drift/drift.dart';

import '../../../domain/domain.dart';

class Accounts extends Table {
  Column<UserID> get userID => ColumnBuilder<String>().unique()();
}
