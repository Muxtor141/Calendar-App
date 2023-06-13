part of 'event_edit_bloc.dart';

@freezed
class EventEditState with _$EventEditState {
  const factory EventEditState({
    @Default(ActionStatus.pure) ActionStatus status,
    @Default(DayEventEntity()) DayEventEntity entity,
  }) = _EventEditState;
}
