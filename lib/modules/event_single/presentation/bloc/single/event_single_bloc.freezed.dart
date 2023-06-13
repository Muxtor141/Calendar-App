// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_single_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventSingleEvent {
  int get id => throw _privateConstructorUsedError;
  VoidCallback get onSuccess => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, VoidCallback onSuccess) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, VoidCallback onSuccess)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, VoidCallback onSuccess)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteEvent value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteEvent value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteEvent value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventSingleEventCopyWith<EventSingleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSingleEventCopyWith<$Res> {
  factory $EventSingleEventCopyWith(
          EventSingleEvent value, $Res Function(EventSingleEvent) then) =
      _$EventSingleEventCopyWithImpl<$Res, EventSingleEvent>;
  @useResult
  $Res call({int id, VoidCallback onSuccess});
}

/// @nodoc
class _$EventSingleEventCopyWithImpl<$Res, $Val extends EventSingleEvent>
    implements $EventSingleEventCopyWith<$Res> {
  _$EventSingleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? onSuccess = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteEventCopyWith<$Res>
    implements $EventSingleEventCopyWith<$Res> {
  factory _$$_DeleteEventCopyWith(
          _$_DeleteEvent value, $Res Function(_$_DeleteEvent) then) =
      __$$_DeleteEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, VoidCallback onSuccess});
}

/// @nodoc
class __$$_DeleteEventCopyWithImpl<$Res>
    extends _$EventSingleEventCopyWithImpl<$Res, _$_DeleteEvent>
    implements _$$_DeleteEventCopyWith<$Res> {
  __$$_DeleteEventCopyWithImpl(
      _$_DeleteEvent _value, $Res Function(_$_DeleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? onSuccess = null,
  }) {
    return _then(_$_DeleteEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      onSuccess: null == onSuccess
          ? _value.onSuccess
          : onSuccess // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$_DeleteEvent implements _DeleteEvent {
  const _$_DeleteEvent(this.id, {required this.onSuccess});

  @override
  final int id;
  @override
  final VoidCallback onSuccess;

  @override
  String toString() {
    return 'EventSingleEvent.delete(id: $id, onSuccess: $onSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteEvent &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.onSuccess, onSuccess) ||
                other.onSuccess == onSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, onSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteEventCopyWith<_$_DeleteEvent> get copyWith =>
      __$$_DeleteEventCopyWithImpl<_$_DeleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, VoidCallback onSuccess) delete,
  }) {
    return delete(id, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, VoidCallback onSuccess)? delete,
  }) {
    return delete?.call(id, onSuccess);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, VoidCallback onSuccess)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id, onSuccess);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteEvent value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteEvent value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteEvent value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteEvent implements EventSingleEvent {
  const factory _DeleteEvent(final int id,
      {required final VoidCallback onSuccess}) = _$_DeleteEvent;

  @override
  int get id;
  @override
  VoidCallback get onSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteEventCopyWith<_$_DeleteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EventSingleState {
  ActionStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventSingleStateCopyWith<EventSingleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventSingleStateCopyWith<$Res> {
  factory $EventSingleStateCopyWith(
          EventSingleState value, $Res Function(EventSingleState) then) =
      _$EventSingleStateCopyWithImpl<$Res, EventSingleState>;
  @useResult
  $Res call({ActionStatus status});
}

/// @nodoc
class _$EventSingleStateCopyWithImpl<$Res, $Val extends EventSingleState>
    implements $EventSingleStateCopyWith<$Res> {
  _$EventSingleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EventSingleStateCopyWith<$Res>
    implements $EventSingleStateCopyWith<$Res> {
  factory _$$_EventSingleStateCopyWith(
          _$_EventSingleState value, $Res Function(_$_EventSingleState) then) =
      __$$_EventSingleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ActionStatus status});
}

/// @nodoc
class __$$_EventSingleStateCopyWithImpl<$Res>
    extends _$EventSingleStateCopyWithImpl<$Res, _$_EventSingleState>
    implements _$$_EventSingleStateCopyWith<$Res> {
  __$$_EventSingleStateCopyWithImpl(
      _$_EventSingleState _value, $Res Function(_$_EventSingleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_EventSingleState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ActionStatus,
    ));
  }
}

/// @nodoc

class _$_EventSingleState implements _EventSingleState {
  const _$_EventSingleState({this.status = ActionStatus.pure});

  @override
  @JsonKey()
  final ActionStatus status;

  @override
  String toString() {
    return 'EventSingleState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSingleState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSingleStateCopyWith<_$_EventSingleState> get copyWith =>
      __$$_EventSingleStateCopyWithImpl<_$_EventSingleState>(this, _$identity);
}

abstract class _EventSingleState implements EventSingleState {
  const factory _EventSingleState({final ActionStatus status}) =
      _$_EventSingleState;

  @override
  ActionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_EventSingleStateCopyWith<_$_EventSingleState> get copyWith =>
      throw _privateConstructorUsedError;
}
