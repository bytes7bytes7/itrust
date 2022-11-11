import 'package:drift/drift.dart';

import '../../../domain/domain.dart';

class AvatarUrls extends Table {
  Column<UserID> get userID => ColumnBuilder<UserID>()();

  TextColumn get url => text()();
}
