part of 'day_events_bloc.dart';

@freezed
class DayEventsState with _$DayEventsState {
  const factory DayEventsState({
    @Default([]) List<DayEventEntity> list,
    @Default(ActionStatus.pure) ActionStatus status,
    DateTime? currentDateTime,
  }) = _DayEventsState;
}
