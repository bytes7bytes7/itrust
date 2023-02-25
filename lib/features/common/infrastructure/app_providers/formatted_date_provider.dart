import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

import '../../application/providers/date_time_provider.dart';
import '../../application/providers/formatted_date_provider.dart';

@Singleton(as: FormattedDateProvider)
class ProdFormattedDateProvider implements FormattedDateProvider {
  const ProdFormattedDateProvider({
    required DateTimeProvider dateTimeProvider,
  }) : _dateTimeProvider = dateTimeProvider;

  final DateTimeProvider _dateTimeProvider;

  @override
  String inRelationToDateTime(DateTime dateTime, DateTime inRelationTo) {
    if (dateTime.year == inRelationTo.year) {
      if (dateTime.month == inRelationTo.month) {
        if (dateTime.day == inRelationTo.day) {
          return DateFormat.Hm().format(dateTime);
        }
      }

      return DateFormat.MMMd().format(dateTime);
    }

    return DateFormat('dd.MM.yyy').format(dateTime);
  }

  @override
  String inRelationToNow(DateTime dateTime) {
    return inRelationToDateTime(dateTime, _dateTimeProvider.now());
  }
}
