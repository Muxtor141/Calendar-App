import 'package:bloc/bloc.dart';
import 'package:calendar_app/modules/calendar/domain/entity/day_event.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/get_day_events.dart';
import 'package:calendar_app/utils/action_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_events_event.dart';

part 'day_events_state.dart';

part 'day_events_bloc.freezed.dart';

class DayEventsBloc extends Bloc<DayEventsEvent, DayEventsState> {
  final GetDayEventsUseCase getEvents;

  DayEventsBloc({required this.getEvents}) : super(const DayEventsState()) {
    on<_GetEvents>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.inProcess));
      final result = await getEvents(event.date);
      if (result.isRight) {
        emit(state.copyWith(
            status: ActionStatus.isSuccess,
            list: result.right,
            currentDateTime: event.date));
      } else {
        emit(state.copyWith(status: ActionStatus.isFailure));
      }
    });
    on<_RefreshCurrentList>((event, emit) async {
      if (state.currentDateTime != null) {
        emit(state.copyWith(status: ActionStatus.inProcess));
        final result = await getEvents(state.currentDateTime!);
        if (result.isRight) {
          emit(state.copyWith(
            status: ActionStatus.isSuccess,
            list: result.right,
          ));
        } else {
          emit(state.copyWith(status: ActionStatus.isFailure));
        }
      }
    });
  }
}
