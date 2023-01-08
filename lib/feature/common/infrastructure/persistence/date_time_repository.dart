import 'package:injectable/injectable.dart';

import '../../domain/persistence/date_time_repository.dart';

@test
@dev
@prod
@Singleton(as: DateTimeRepository)
class ProdDateTimeRepository implements DateTimeRepository {
  @override
  DateTime get now => DateTime.now();
}
