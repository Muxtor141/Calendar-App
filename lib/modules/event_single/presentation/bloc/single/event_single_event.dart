part of 'event_single_bloc.dart';

@freezed
class EventSingleEvent with _$EventSingleEvent {
  const factory EventSingleEvent.delete(int id,{required VoidCallback onSuccess}) = _DeleteEvent;
}
