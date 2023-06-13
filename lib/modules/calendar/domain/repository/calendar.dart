import 'package:calendar_app/core/data/error/failures.dart';
import 'package:calendar_app/modules/calendar/data/model/event.dart';
import 'package:calendar_app/utils/either.dart';

abstract class CalendarRepository {
  Future<Either<Failure,List<EventModel>>> getDayEvents(DateTime dateTime);
  Future<Either<Failure,bool>> addEvent(EventModel event);
  Future<Either<Failure,bool>> updateEvent(EventModel event);
  Future<Either<Failure,bool>> deleteEvent(int id);
}