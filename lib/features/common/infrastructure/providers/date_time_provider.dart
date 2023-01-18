import 'package:injectable/injectable.dart';

import '../../application/providers/date_time_provider.dart';

@Singleton(as: DateTimeProvider)
class ProdDateTimeProvider implements DateTimeProvider {
  @override
  DateTime now() => DateTime.now();
}
