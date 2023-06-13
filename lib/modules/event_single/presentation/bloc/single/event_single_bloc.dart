import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/delete_event.dart';
import 'package:calendar_app/utils/action_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_single_event.dart';

part 'event_single_state.dart';

part 'event_single_bloc.freezed.dart';

class EventSingleBloc extends Bloc<EventSingleEvent, EventSingleState> {
  final DeleteEventUseCase deleteEvent;

  EventSingleBloc(this.deleteEvent) : super(const EventSingleState()) {
    on<_DeleteEvent>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.inProcess));
      final result = await deleteEvent(event.id);

      if (result.right) {
        event.onSuccess();
        emit(state.copyWith(status: ActionStatus.isSuccess));
      } else {
        emit(state.copyWith(status: ActionStatus.isFailure));
      }
    });
  }
}
