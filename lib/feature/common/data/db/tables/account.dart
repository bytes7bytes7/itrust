import 'package:drift/drift.dart';

import '../../../domain/domain.dart';

class Account extends Table {
  Column<UserID> get userID => ColumnBuilder<String>().unique()();
}
