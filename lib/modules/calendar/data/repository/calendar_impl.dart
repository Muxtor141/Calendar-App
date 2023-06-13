import 'package:calendar_app/core/data/database/db.dart';
import 'package:calendar_app/core/data/error/failures.dart';
import 'package:calendar_app/modules/calendar/data/datasource/calendar_local_datasource.dart';
import 'package:calendar_app/modules/calendar/data/model/event.dart';
import 'package:calendar_app/modules/calendar/domain/repository/calendar.dart';
import 'package:calendar_app/utils/either.dart';

class CalendarRepositoryImpl implements CalendarRepository {
  final CalendarLocalDataSourceImpl data = CalendarLocalDataSourceImpl();

  @override
  Future<Either<Failure, List<EventModel>>> getDayEvents(DateTime dateTime) {
    return data.getDayEvents(dateTime);
  }

  @override
  Future<Either<Failure, bool>> addEvent(EventModel event) {
    return data.addEvent(event);
  }

  @override
  Future<Either<Failure, bool>> deleteEvent(int id) {
    return data.deleteEvent(id);
  }

  @override
  Future<Either<Failure, bool>> updateEvent(EventModel event) {
    return data.updateEvent(event);
  }
}
