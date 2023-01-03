import 'package:injectable/injectable.dart';

import '../../application/persistence/date_time_facade.dart';
import '../../application/persistence/date_time_repository.dart';

@test
@dev
@prod
@Singleton(as: DateTimeFacade)
class ProdDateTimeFacade implements DateTimeFacade {
  const ProdDateTimeFacade(this.dateTimeRepository);

  final DateTimeRepository dateTimeRepository;

  @override
  String beautifyBasedOnNow(DateTime dateTime) {
    final dateFormat = dateTimeRepository.dateFormatOverNow(dateTime);
    return dateTimeRepository.beautify(dateTime, dateFormat);
  }
}
