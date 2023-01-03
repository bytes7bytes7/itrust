import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../application/persistence/date_time_repository.dart';

@test
@dev
@prod
@Singleton(as: DateTimeRepository)
class ProdDateTimeRepository implements DateTimeRepository {
  @override
  DateTime get now => DateTime.now();

  @override
  String beautify(DateTime dateTime, DateFormat dateFormat) {
    return dateFormat.format(dateTime);
  }

  @override
  DateFormat dateFormatOverNow(DateTime dateTime) {
    final nowDT = now;

    if (dateTime.year == nowDT.year) {
      if (dateTime.month == nowDT.month) {
        if (dateTime.day == nowDT.day) {
          return DateFormat.Hm();
        }
      }

      return DateFormat.MMMd();
    }

    return DateFormat('dd.MM.yyy');
  }
}
