import 'package:calendar_app/core/data/error/failures.dart';
import 'package:calendar_app/core/data/usecases/usecase.dart';
import 'package:calendar_app/modules/calendar/data/repository/calendar_impl.dart';
import 'package:calendar_app/modules/calendar/domain/entity/day_event.dart';
import 'package:calendar_app/utils/either.dart';

class GetDayEventsUseCase extends UseCase<List<DayEventEntity>, DateTime> {
  final CalendarRepositoryImpl repo;

  GetDayEventsUseCase({required this.repo});
  @override
  Future<Either<Failure, List<DayEventEntity>>> call(DateTime date) {
    return repo.getDayEvents(date);
  }
}
