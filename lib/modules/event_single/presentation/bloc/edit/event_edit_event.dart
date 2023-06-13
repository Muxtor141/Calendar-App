part of 'event_edit_bloc.dart';

@freezed
class EventEditEvent with _$EventEditEvent {
  const factory EventEditEvent.addEvent(EventModel event,{required VoidCallback onSuccess,required bool isEdit}) = _AddEvent;
}
