part of 'event_single_bloc.dart';

@freezed
class EventSingleState with _$EventSingleState {
  const factory EventSingleState({
    @Default(ActionStatus.pure) ActionStatus status
}) = _EventSingleState;
}
