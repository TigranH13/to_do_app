// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saveTask,
    required TResult Function() loadTasks,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? saveTask,
    TResult? Function()? loadTasks,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saveTask,
    TResult Function()? loadTasks,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskSave value) saveTask,
    required TResult Function(TaskLoad value) loadTasks,
    required TResult Function(TaskDelete value) deleteTask,
    required TResult Function(TaskEdit value) editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskSave value)? saveTask,
    TResult? Function(TaskLoad value)? loadTasks,
    TResult? Function(TaskDelete value)? deleteTask,
    TResult? Function(TaskEdit value)? editTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskSave value)? saveTask,
    TResult Function(TaskLoad value)? loadTasks,
    TResult Function(TaskDelete value)? deleteTask,
    TResult Function(TaskEdit value)? editTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoEventCopyWith<$Res> {
  factory $TodoEventCopyWith(TodoEvent value, $Res Function(TodoEvent) then) =
      _$TodoEventCopyWithImpl<$Res, TodoEvent>;
}

/// @nodoc
class _$TodoEventCopyWithImpl<$Res, $Val extends TodoEvent>
    implements $TodoEventCopyWith<$Res> {
  _$TodoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TaskSaveImplCopyWith<$Res> {
  factory _$$TaskSaveImplCopyWith(
          _$TaskSaveImpl value, $Res Function(_$TaskSaveImpl) then) =
      __$$TaskSaveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$TaskSaveImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TaskSaveImpl>
    implements _$$TaskSaveImplCopyWith<$Res> {
  __$$TaskSaveImplCopyWithImpl(
      _$TaskSaveImpl _value, $Res Function(_$TaskSaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskSaveImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TaskSaveImpl implements TaskSave {
  const _$TaskSaveImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TodoEvent.saveTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskSaveImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskSaveImplCopyWith<_$TaskSaveImpl> get copyWith =>
      __$$TaskSaveImplCopyWithImpl<_$TaskSaveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saveTask,
    required TResult Function() loadTasks,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
  }) {
    return saveTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? saveTask,
    TResult? Function()? loadTasks,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
  }) {
    return saveTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saveTask,
    TResult Function()? loadTasks,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskSave value) saveTask,
    required TResult Function(TaskLoad value) loadTasks,
    required TResult Function(TaskDelete value) deleteTask,
    required TResult Function(TaskEdit value) editTask,
  }) {
    return saveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskSave value)? saveTask,
    TResult? Function(TaskLoad value)? loadTasks,
    TResult? Function(TaskDelete value)? deleteTask,
    TResult? Function(TaskEdit value)? editTask,
  }) {
    return saveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskSave value)? saveTask,
    TResult Function(TaskLoad value)? loadTasks,
    TResult Function(TaskDelete value)? deleteTask,
    TResult Function(TaskEdit value)? editTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(this);
    }
    return orElse();
  }
}

abstract class TaskSave implements TodoEvent {
  const factory TaskSave({required final Task task}) = _$TaskSaveImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$TaskSaveImplCopyWith<_$TaskSaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskLoadImplCopyWith<$Res> {
  factory _$$TaskLoadImplCopyWith(
          _$TaskLoadImpl value, $Res Function(_$TaskLoadImpl) then) =
      __$$TaskLoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskLoadImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TaskLoadImpl>
    implements _$$TaskLoadImplCopyWith<$Res> {
  __$$TaskLoadImplCopyWithImpl(
      _$TaskLoadImpl _value, $Res Function(_$TaskLoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskLoadImpl implements TaskLoad {
  const _$TaskLoadImpl();

  @override
  String toString() {
    return 'TodoEvent.loadTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskLoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saveTask,
    required TResult Function() loadTasks,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
  }) {
    return loadTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? saveTask,
    TResult? Function()? loadTasks,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
  }) {
    return loadTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saveTask,
    TResult Function()? loadTasks,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskSave value) saveTask,
    required TResult Function(TaskLoad value) loadTasks,
    required TResult Function(TaskDelete value) deleteTask,
    required TResult Function(TaskEdit value) editTask,
  }) {
    return loadTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskSave value)? saveTask,
    TResult? Function(TaskLoad value)? loadTasks,
    TResult? Function(TaskDelete value)? deleteTask,
    TResult? Function(TaskEdit value)? editTask,
  }) {
    return loadTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskSave value)? saveTask,
    TResult Function(TaskLoad value)? loadTasks,
    TResult Function(TaskDelete value)? deleteTask,
    TResult Function(TaskEdit value)? editTask,
    required TResult orElse(),
  }) {
    if (loadTasks != null) {
      return loadTasks(this);
    }
    return orElse();
  }
}

abstract class TaskLoad implements TodoEvent {
  const factory TaskLoad() = _$TaskLoadImpl;
}

/// @nodoc
abstract class _$$TaskDeleteImplCopyWith<$Res> {
  factory _$$TaskDeleteImplCopyWith(
          _$TaskDeleteImpl value, $Res Function(_$TaskDeleteImpl) then) =
      __$$TaskDeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$TaskDeleteImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TaskDeleteImpl>
    implements _$$TaskDeleteImplCopyWith<$Res> {
  __$$TaskDeleteImplCopyWithImpl(
      _$TaskDeleteImpl _value, $Res Function(_$TaskDeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$TaskDeleteImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TaskDeleteImpl implements TaskDelete {
  const _$TaskDeleteImpl({required this.task});

  @override
  final Task task;

  @override
  String toString() {
    return 'TodoEvent.deleteTask(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskDeleteImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskDeleteImplCopyWith<_$TaskDeleteImpl> get copyWith =>
      __$$TaskDeleteImplCopyWithImpl<_$TaskDeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saveTask,
    required TResult Function() loadTasks,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
  }) {
    return deleteTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? saveTask,
    TResult? Function()? loadTasks,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
  }) {
    return deleteTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saveTask,
    TResult Function()? loadTasks,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskSave value) saveTask,
    required TResult Function(TaskLoad value) loadTasks,
    required TResult Function(TaskDelete value) deleteTask,
    required TResult Function(TaskEdit value) editTask,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskSave value)? saveTask,
    TResult? Function(TaskLoad value)? loadTasks,
    TResult? Function(TaskDelete value)? deleteTask,
    TResult? Function(TaskEdit value)? editTask,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskSave value)? saveTask,
    TResult Function(TaskLoad value)? loadTasks,
    TResult Function(TaskDelete value)? deleteTask,
    TResult Function(TaskEdit value)? editTask,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class TaskDelete implements TodoEvent {
  const factory TaskDelete({required final Task task}) = _$TaskDeleteImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$TaskDeleteImplCopyWith<_$TaskDeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskEditImplCopyWith<$Res> {
  factory _$$TaskEditImplCopyWith(
          _$TaskEditImpl value, $Res Function(_$TaskEditImpl) then) =
      __$$TaskEditImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? scheduleTime, Task task});
}

/// @nodoc
class __$$TaskEditImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TaskEditImpl>
    implements _$$TaskEditImplCopyWith<$Res> {
  __$$TaskEditImplCopyWithImpl(
      _$TaskEditImpl _value, $Res Function(_$TaskEditImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleTime = freezed,
    Object? task = null,
  }) {
    return _then(_$TaskEditImpl(
      scheduleTime: freezed == scheduleTime
          ? _value.scheduleTime
          : scheduleTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$TaskEditImpl implements TaskEdit {
  const _$TaskEditImpl({required this.scheduleTime, required this.task});

  @override
  final DateTime? scheduleTime;
  @override
  final Task task;

  @override
  String toString() {
    return 'TodoEvent.editTask(scheduleTime: $scheduleTime, task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEditImpl &&
            (identical(other.scheduleTime, scheduleTime) ||
                other.scheduleTime == scheduleTime) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleTime, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEditImplCopyWith<_$TaskEditImpl> get copyWith =>
      __$$TaskEditImplCopyWithImpl<_$TaskEditImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) saveTask,
    required TResult Function() loadTasks,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
  }) {
    return editTask(scheduleTime, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Task task)? saveTask,
    TResult? Function()? loadTasks,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
  }) {
    return editTask?.call(scheduleTime, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? saveTask,
    TResult Function()? loadTasks,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(scheduleTime, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TaskSave value) saveTask,
    required TResult Function(TaskLoad value) loadTasks,
    required TResult Function(TaskDelete value) deleteTask,
    required TResult Function(TaskEdit value) editTask,
  }) {
    return editTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TaskSave value)? saveTask,
    TResult? Function(TaskLoad value)? loadTasks,
    TResult? Function(TaskDelete value)? deleteTask,
    TResult? Function(TaskEdit value)? editTask,
  }) {
    return editTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TaskSave value)? saveTask,
    TResult Function(TaskLoad value)? loadTasks,
    TResult Function(TaskDelete value)? deleteTask,
    TResult Function(TaskEdit value)? editTask,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(this);
    }
    return orElse();
  }
}

abstract class TaskEdit implements TodoEvent {
  const factory TaskEdit(
      {required final DateTime? scheduleTime,
      required final Task task}) = _$TaskEditImpl;

  DateTime? get scheduleTime;
  Task get task;
  @JsonKey(ignore: true)
  _$$TaskEditImplCopyWith<_$TaskEditImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInitial value) initial,
    required TResult Function(_TodoLoading value) loading,
    required TResult Function(_TodoLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoStateCopyWith<$Res> {
  factory $TodoStateCopyWith(TodoState value, $Res Function(TodoState) then) =
      _$TodoStateCopyWithImpl<$Res, TodoState>;
}

/// @nodoc
class _$TodoStateCopyWithImpl<$Res, $Val extends TodoState>
    implements $TodoStateCopyWith<$Res> {
  _$TodoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TodoInitialImplCopyWith<$Res> {
  factory _$$TodoInitialImplCopyWith(
          _$TodoInitialImpl value, $Res Function(_$TodoInitialImpl) then) =
      __$$TodoInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoInitialImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoInitialImpl>
    implements _$$TodoInitialImplCopyWith<$Res> {
  __$$TodoInitialImplCopyWithImpl(
      _$TodoInitialImpl _value, $Res Function(_$TodoInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoInitialImpl implements _TodoInitial {
  const _$TodoInitialImpl();

  @override
  String toString() {
    return 'TodoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInitial value) initial,
    required TResult Function(_TodoLoading value) loading,
    required TResult Function(_TodoLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TodoInitial implements TodoState {
  const factory _TodoInitial() = _$TodoInitialImpl;
}

/// @nodoc
abstract class _$$TodoLoadingImplCopyWith<$Res> {
  factory _$$TodoLoadingImplCopyWith(
          _$TodoLoadingImpl value, $Res Function(_$TodoLoadingImpl) then) =
      __$$TodoLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoLoadingImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoLoadingImpl>
    implements _$$TodoLoadingImplCopyWith<$Res> {
  __$$TodoLoadingImplCopyWithImpl(
      _$TodoLoadingImpl _value, $Res Function(_$TodoLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodoLoadingImpl implements _TodoLoading {
  const _$TodoLoadingImpl();

  @override
  String toString() {
    return 'TodoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInitial value) initial,
    required TResult Function(_TodoLoading value) loading,
    required TResult Function(_TodoLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TodoLoading implements TodoState {
  const factory _TodoLoading() = _$TodoLoadingImpl;
}

/// @nodoc
abstract class _$$TodoLoadedImplCopyWith<$Res> {
  factory _$$TodoLoadedImplCopyWith(
          _$TodoLoadedImpl value, $Res Function(_$TodoLoadedImpl) then) =
      __$$TodoLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Task> tasks});
}

/// @nodoc
class __$$TodoLoadedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$TodoLoadedImpl>
    implements _$$TodoLoadedImplCopyWith<$Res> {
  __$$TodoLoadedImplCopyWithImpl(
      _$TodoLoadedImpl _value, $Res Function(_$TodoLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$TodoLoadedImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>,
    ));
  }
}

/// @nodoc

class _$TodoLoadedImpl implements _TodoLoaded {
  const _$TodoLoadedImpl({required final List<Task> tasks}) : _tasks = tasks;

  final List<Task> _tasks;
  @override
  List<Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  String toString() {
    return 'TodoState.loaded(tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoLoadedImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoLoadedImplCopyWith<_$TodoLoadedImpl> get copyWith =>
      __$$TodoLoadedImplCopyWithImpl<_$TodoLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInitial value) initial,
    required TResult Function(_TodoLoading value) loading,
    required TResult Function(_TodoLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TodoLoaded implements TodoState {
  const factory _TodoLoaded({required final List<Task> tasks}) =
      _$TodoLoadedImpl;

  List<Task> get tasks;
  @JsonKey(ignore: true)
  _$$TodoLoadedImplCopyWith<_$TodoLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
