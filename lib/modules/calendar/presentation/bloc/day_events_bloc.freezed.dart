// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DayEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) getEvents,
    required TResult Function() refreshCurrentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? getEvents,
    TResult? Function()? refreshCurrentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? getEvents,
    TResult Function()? refreshCurrentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_RefreshCurrentList value) refreshCurrentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_RefreshCurrentList value)? refreshCurrentList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_RefreshCurrentList value)? refreshCurrentList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayEventsEventCopyWith<$Res> {
  factory $DayEventsEventCopyWith(
          DayEventsEvent value, $Res Function(DayEventsEvent) then) =
      _$DayEventsEventCopyWithImpl<$Res, DayEventsEvent>;
}

/// @nodoc
class _$DayEventsEventCopyWithImpl<$Res, $Val extends DayEventsEvent>
    implements $DayEventsEventCopyWith<$Res> {
  _$DayEventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetEventsCopyWith<$Res> {
  factory _$$_GetEventsCopyWith(
          _$_GetEvents value, $Res Function(_$_GetEvents) then) =
      __$$_GetEventsCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_GetEventsCopyWithImpl<$Res>
    extends _$DayEventsEventCopyWithImpl<$Res, _$_GetEvents>
    implements _$$_GetEventsCopyWith<$Res> {
  __$$_GetEventsCopyWithImpl(
      _$_GetEvents _value, $Res Function(_$_GetEvents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_GetEvents(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_GetEvents implements _GetEvents {
  const _$_GetEvents(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'DayEventsEvent.getEvents(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetEvents &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetEventsCopyWith<_$_GetEvents> get copyWith =>
      __$$_GetEventsCopyWithImpl<_$_GetEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) getEvents,
    required TResult Function() refreshCurrentList,
  }) {
    return getEvents(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? getEvents,
    TResult? Function()? refreshCurrentList,
  }) {
    return getEvents?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? getEvents,
    TResult Function()? refreshCurrentList,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_RefreshCurrentList value) refreshCurrentList,
  }) {
    return getEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_RefreshCurrentList value)? refreshCurrentList,
  }) {
    return getEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_RefreshCurrentList value)? refreshCurrentList,
    required TResult orElse(),
  }) {
    if (getEvents != null) {
      return getEvents(this);
    }
    return orElse();
  }
}

abstract class _GetEvents implements DayEventsEvent {
  const factory _GetEvents(final DateTime date) = _$_GetEvents;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_GetEventsCopyWith<_$_GetEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RefreshCurrentListCopyWith<$Res> {
  factory _$$_RefreshCurrentListCopyWith(_$_RefreshCurrentList value,
          $Res Function(_$_RefreshCurrentList) then) =
      __$$_RefreshCurrentListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCurrentListCopyWithImpl<$Res>
    extends _$DayEventsEventCopyWithImpl<$Res, _$_RefreshCurrentList>
    implements _$$_RefreshCurrentListCopyWith<$Res> {
  __$$_RefreshCurrentListCopyWithImpl(
      _$_RefreshCurrentList _value, $Res Function(_$_RefreshCurrentList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RefreshCurrentList implements _RefreshCurrentList {
  const _$_RefreshCurrentList();

  @override
  String toString() {
    return 'DayEventsEvent.refreshCurrentList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RefreshCurrentList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) getEvents,
    required TResult Function() refreshCurrentList,
  }) {
    return refreshCurrentList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? getEvents,
    TResult? Function()? refreshCurrentList,
  }) {
    return refreshCurrentList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? getEvents,
    TResult Function()? refreshCurrentList,
    required TResult orElse(),
  }) {
    if (refreshCurrentList != null) {
      return refreshCurrentList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEvents value) getEvents,
    required TResult Function(_RefreshCurrentList value) refreshCurrentList,
  }) {
    return refreshCurrentList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetEvents value)? getEvents,
    TResult? Function(_RefreshCurrentList value)? refreshCurrentList,
  }) {
    return refreshCurrentList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEvents value)? getEvents,
    TResult Function(_RefreshCurrentList value)? refreshCurrentList,
    required TResult orElse(),
  }) {
    if (refreshCurrentList != null) {
      return refreshCurrentList(this);
    }
    return orElse();
  }
}

abstract class _RefreshCurrentList implements DayEventsEvent {
  const factory _RefreshCurrentList() = _$_RefreshCurrentList;
}

/// @nodoc
mixin _$DayEventsState {
  List<DayEventEntity> get list => throw _privateConstructorUsedError;
  ActionStatus get status => throw _privateConstructorUsedError;
  DateTime? get currentDateTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DayEventsStateCopyWith<DayEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayEventsStateCopyWith<$Res> {
  factory $DayEventsStateCopyWith(
          DayEventsState value, $Res Function(DayEventsState) then) =
      _$DayEventsStateCopyWithImpl<$Res, DayEventsState>;
  @useResult
  $Res call(
      {List<DayEventEntity> list,
      ActionStatus status,
      DateTime? currentDateTime});
}

/// @nodoc
class _$DayEventsStateCopyWithImpl<$Res, $Val extends DayEventsState>
    implements $DayEventsStateCopyWith<$Res> {
  _$DayEventsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? status = null,
    Object? currentDateTime = freezed,
  }) {
    return _then(_value.copyWith(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DayEventEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      currentDateTime: freezed == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DayEventsStateCopyWith<$Res>
    implements $DayEventsStateCopyWith<$Res> {
  factory _$$_DayEventsStateCopyWith(
          _$_DayEventsState value, $Res Function(_$_DayEventsState) then) =
      __$$_DayEventsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DayEventEntity> list,
      ActionStatus status,
      DateTime? currentDateTime});
}

/// @nodoc
class __$$_DayEventsStateCopyWithImpl<$Res>
    extends _$DayEventsStateCopyWithImpl<$Res, _$_DayEventsState>
    implements _$$_DayEventsStateCopyWith<$Res> {
  __$$_DayEventsStateCopyWithImpl(
      _$_DayEventsState _value, $Res Function(_$_DayEventsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? status = null,
    Object? currentDateTime = freezed,
  }) {
    return _then(_$_DayEventsState(
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<DayEventEntity>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
      currentDateTime: freezed == currentDateTime
          ? _value.currentDateTime
          : currentDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_DayEventsState implements _DayEventsState {
  const _$_DayEventsState(
      {final List<DayEventEntity> list = const [],
      this.status = ActionStatus.pure,
      this.currentDateTime})
      : _list = list;

  final List<DayEventEntity> _list;
  @override
  @JsonKey()
  List<DayEventEntity> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey()
  final ActionStatus status;
  @override
  final DateTime? currentDateTime;

  @override
  String toString() {
    return 'DayEventsState(list: $list, status: $status, currentDateTime: $currentDateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DayEventsState &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentDateTime, currentDateTime) ||
                other.currentDateTime == currentDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_list), status, currentDateTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DayEventsStateCopyWith<_$_DayEventsState> get copyWith =>
      __$$_DayEventsStateCopyWithImpl<_$_DayEventsState>(this, _$identity);
}

abstract class _DayEventsState implements DayEventsState {
  const factory _DayEventsState(
      {final List<DayEventEntity> list,
      final ActionStatus status,
      final DateTime? currentDateTime}) = _$_DayEventsState;

  @override
  List<DayEventEntity> get list;
  @override
  ActionStatus get status;
  @override
  DateTime? get currentDateTime;
  @override
  @JsonKey(ignore: true)
  _$$_DayEventsStateCopyWith<_$_DayEventsState> get copyWith =>
      throw _privateConstructorUsedError;
}
