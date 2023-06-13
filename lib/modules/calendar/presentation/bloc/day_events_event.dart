part of 'day_events_bloc.dart';

@freezed
class DayEventsEvent with _$DayEventsEvent {
  const factory DayEventsEvent.getEvents(DateTime date) = _GetEvents;
  const factory DayEventsEvent.refreshCurrentList() = _RefreshCurrentList;
}
