import 'package:calendar_app/core/data/database/db.dart';
import 'package:calendar_app/core/data/error/failures.dart';
import 'package:calendar_app/main.dart';
import 'package:calendar_app/modules/calendar/data/model/event.dart';
import 'package:calendar_app/utils/either.dart';

abstract class CalendarLocalDataSource {
  Future<Either<Failure, List<EventModel>>> getDayEvents(DateTime dateTime);

  Future<Either<Failure, bool>> addEvent(EventModel event);
  Future<Either<Failure, bool>> updateEvent(EventModel event);
  Future<Either<Failure, bool>> deleteEvent(int id);
}

class CalendarLocalDataSourceImpl implements CalendarLocalDataSource {
  final LocaleDataBase dataBase = db;

  @override
  Future<Either<Failure, List<EventModel>>> getDayEvents(
      DateTime dateTime) async {
    try {
      final result = await dataBase.queryDayEvents(
          day: dateTime.day, month: dateTime.month, year: dateTime.year);

      final data = (result).map((e) => EventModel.fromJson(e)).toList();

      return Right(data);
    } catch (e) {
      print(e.toString()+'dbErrorQuery');
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> addEvent(EventModel event) async {
    try {
      await dataBase.insertEvent(event.toJson());

      return Right(true);
    } catch (e) {
      print(e.toString()+' dbErrorAdd');
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> deleteEvent(int id) async{
    try {
     await db.delete(id);
     return Right(true);
    }catch(e){
      print(e.toString()+' dbErrorDelete');
      return Left(ServerFailure());
    }

  }

  @override
  Future<Either<Failure, bool>> updateEvent(EventModel event) async{
    try {
      await db.update(event.toJsonUpdater());
      return Right(true);
    }catch(e){
      print(e.toString()+'dbErrorUpdate');
      return Left(ServerFailure());
    }


  }
}
