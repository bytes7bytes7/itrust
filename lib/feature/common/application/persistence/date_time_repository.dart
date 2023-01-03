import 'package:intl/intl.dart';

abstract class DateTimeRepository {
  DateTime get now;

  String beautify(DateTime dateTime, DateFormat dateFormat);

  /// Get [DateFormat] in relation to now.
  DateFormat dateFormatOverNow(DateTime dateTime);
}
