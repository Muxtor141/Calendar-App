// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_edit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventEditEvent {
  EventModel get event => throw _privateConstructorUsedError;
  VoidCallback get onSuccess => throw _privateConstructorUsedError;
  bool get isEdit => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EventModel event, VoidCallback onSuccess, bool isEdit)
        addEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventModel event, VoidCallback onSuccess, bool isEdit)?
        addEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventModel event, VoidCallback onSuccess, bool isEdit)?
        addEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEvent value) addEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEvent value)? addEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEvent value)? addEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventEditEventCopyWith<EventEditEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEditEventCopyWith<$Res> {
  factory $EventEditEventCopyWith(
          EventEditEvent value, $Res Function(EventEditEvent) then) =
      _$EventEditEventCopyWithImpl<$Res, EventEditEvent>;
  @useResult
  $Res call({EventModel event, VoidCallback onSuccess, bool isEdit});
}

/// @nodoc
class _$EventEditEventCopyWithImpl<$Res, $Val extends EventEditEvent>
    implements $EventEditEventCopyWith<$Res> {
  _$EventEditEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? onSuccess = null,
    Object? isEdit = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AddEventCopyWith<$Res>
    implements $EventEditEventCopyWith<$Res> {
  factory _$$_AddEventCopyWith(
          _$_AddEvent value, $Res Function(_$_AddEvent) then) =
      __$$_AddEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EventModel event, VoidCallback onSuccess, bool isEdit});
}

/// @nodoc
class __$$_AddEventCopyWithImpl<$Res>
    extends _$EventEditEventCopyWithImpl<$Res, _$_AddEvent>
    implements _$$_AddEventCopyWith<$Res> {
  __$$_AddEventCopyWithImpl(
      _$_AddEvent _value, $Res Function(_$_AddEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? onSuccess = null,
    Object? isEdit = null,
  }) {
    return _then(_$_AddEvent(
      null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as EventModel,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      isEdit: null == isEdit
          ? _value.isEdit
          : isEdit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddEvent implements _AddEvent {
  const _$_AddEvent(this.event,
      {required this.onSuccess, required this.isEdit});

  @override
  final EventModel event;
  @override
  final VoidCallback onSuccess;
  @override
  final bool isEdit;

  @override
  String toString() {
    return 'EventEditEvent.addEvent(event: $event, onSuccess: $onSuccess, isEdit: $isEdit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddEvent &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess) &&
            (identical(other.isEdit, isEdit) || other.isEdit == isEdit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, event, onSuccess, isEdit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddEventCopyWith<_$_AddEvent> get copyWith =>
      __$$_AddEventCopyWithImpl<_$_AddEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            EventModel event, VoidCallback onSuccess, bool isEdit)
        addEvent,
  }) {
    return addEvent(event, onSuccess, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EventModel event, VoidCallback onSuccess, bool isEdit)?
        addEvent,
  }) {
    return addEvent?.call(event, onSuccess, isEdit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EventModel event, VoidCallback onSuccess, bool isEdit)?
        addEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(event, onSuccess, isEdit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddEvent value) addEvent,
  }) {
    return addEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddEvent value)? addEvent,
  }) {
    return addEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddEvent value)? addEvent,
    required TResult orElse(),
  }) {
    if (addEvent != null) {
      return addEvent(this);
    }
    return orElse();
  }
}

abstract class _AddEvent implements EventEditEvent {
  const factory _AddEvent(final EventModel event,
      {required final VoidCallback onSuccess,
      required final bool isEdit}) = _$_AddEvent;

  @override
  EventModel get event;
  @override
  VoidCallback get onSuccess;
  @override
  bool get isEdit;
  @override
  @JsonKey(ignore: true)
  _$$_AddEventCopyWith<_$_AddEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventEditState {
  ActionStatus get status => throw _privateConstructorUsedError;
  DayEventEntity get entity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventEditStateCopyWith<EventEditState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEditStateCopyWith<$Res> {
  factory $EventEditStateCopyWith(
          EventEditState value, $Res Function(EventEditState) then) =
      _$EventEditStateCopyWithImpl<$Res, EventEditState>;
  @useResult
  $Res call({ActionStatus status, DayEventEntity entity});
}

/// @nodoc
class _$EventEditStateCopyWithImpl<$Res, $Val extends EventEditState>
    implements $EventEditStateCopyWith<$Res> {
  _$EventEditStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entity = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as DayEventEntity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventEditStateCopyWith<$Res>
    implements $EventEditStateCopyWith<$Res> {
  factory _$$_EventEditStateCopyWith(
          _$_EventEditState value, $Res Function(_$_EventEditState) then) =
      __$$_EventEditStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionStatus status, DayEventEntity entity});
}

/// @nodoc
class __$$_EventEditStateCopyWithImpl<$Res>
    extends _$EventEditStateCopyWithImpl<$Res, _$_EventEditState>
    implements _$$_EventEditStateCopyWith<$Res> {
  __$$_EventEditStateCopyWithImpl(
      _$_EventEditState _value, $Res Function(_$_EventEditState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? entity = null,
  }) {
    return _then(_$_EventEditState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as DayEventEntity,
    ));
  }
}

/// @nodoc

class _$_EventEditState implements _EventEditState {
  const _$_EventEditState(
      {this.status = ActionStatus.pure, this.entity = const DayEventEntity()});

  @override
  @JsonKey()
  final ActionStatus status;
  @override
  @JsonKey()
  final DayEventEntity entity;

  @override
  String toString() {
    return 'EventEditState(status: $status, entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventEditState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventEditStateCopyWith<_$_EventEditState> get copyWith =>
      __$$_EventEditStateCopyWithImpl<_$_EventEditState>(this, _$identity);
}

abstract class _EventEditState implements EventEditState {
  const factory _EventEditState(
      {final ActionStatus status,
      final DayEventEntity entity}) = _$_EventEditState;

  @override
  ActionStatus get status;
  @override
  DayEventEntity get entity;
  @override
  @JsonKey(ignore: true)
  _$$_EventEditStateCopyWith<_$_EventEditState> get copyWith =>
      throw _privateConstructorUsedError;
}
