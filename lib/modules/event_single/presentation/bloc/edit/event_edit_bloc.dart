import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:calendar_app/core/data/error/failures.dart';
import 'package:calendar_app/modules/calendar/data/model/event.dart';
import 'package:calendar_app/modules/calendar/domain/entity/day_event.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/add_event.dart';
import 'package:calendar_app/modules/calendar/domain/usecase/update_event.dart';
import 'package:calendar_app/utils/action_status.dart';
import 'package:calendar_app/utils/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_edit_event.dart';

part 'event_edit_state.dart';

part 'event_edit_bloc.freezed.dart';

class EventEditBloc extends Bloc<EventEditEvent, EventEditState> {
  final AddEventUseCase addEvent;
  final UpdateEventUseCase updateEvent;

  EventEditBloc(this.addEvent, this.updateEvent)
      : super(const EventEditState()) {
    on<EventEditEvent>((event, emit) async {
      emit(state.copyWith(status: ActionStatus.inProcess));
      Either<Failure, bool> result;
      if (event.isEdit) {
        print('update');
        result = await updateEvent(event.event);

      } else {
        result = await addEvent(event.event);
      }
      if (result.right) {
        event.onSuccess();
        emit(state.copyWith(status: ActionStatus.isSuccess));
      } else {
        emit(state.copyWith(status: ActionStatus.isFailure));
      }
    });
  }
}
