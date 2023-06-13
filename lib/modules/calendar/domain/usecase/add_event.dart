import 'package:calendar_app/core/data/error/failures.dart';
import 'package:calendar_app/core/data/usecases/usecase.dart';
import 'package:calendar_app/modules/calendar/data/model/event.dart';
import 'package:calendar_app/modules/calendar/data/repository/calendar_impl.dart';
import 'package:calendar_app/utils/either.dart';

class AddEventUseCase extends UseCase<bool, EventModel> {
  final CalendarRepositoryImpl repo;

  AddEventUseCase({required this.repo});

  @override
  Future<Either<Failure, bool>> call(EventModel event) {
    return repo.addEvent(event);
  }
}
