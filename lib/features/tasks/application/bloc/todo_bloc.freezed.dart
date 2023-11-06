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
    required TResult Function() init,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
    required TResult Function() clearState,
    required TResult Function() syncRemoteAndLocalData,
    required TResult Function() clearTaskLocalStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
    TResult? Function()? clearState,
    TResult? Function()? syncRemoteAndLocalData,
    TResult? Function()? clearTaskLocalStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    TResult Function()? clearState,
    TResult Function()? syncRemoteAndLocalData,
    TResult Function()? clearTaskLocalStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInit value) init,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(EditTask value) editTask,
    required TResult Function(TaskStateClear value) clearState,
    required TResult Function(SyncRemoteAndLocalData value)
        syncRemoteAndLocalData,
    required TResult Function(ClearTaskLocalStorage value)
        clearTaskLocalStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInit value)? init,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(EditTask value)? editTask,
    TResult? Function(TaskStateClear value)? clearState,
    TResult? Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult? Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInit value)? init,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(EditTask value)? editTask,
    TResult Function(TaskStateClear value)? clearState,
    TResult Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
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
abstract class _$$TasksInitImplCopyWith<$Res> {
  factory _$$TasksInitImplCopyWith(
          _$TasksInitImpl value, $Res Function(_$TasksInitImpl) then) =
      __$$TasksInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TasksInitImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TasksInitImpl>
    implements _$$TasksInitImplCopyWith<$Res> {
  __$$TasksInitImplCopyWithImpl(
      _$TasksInitImpl _value, $Res Function(_$TasksInitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TasksInitImpl implements TasksInit {
  const _$TasksInitImpl();

  @override
  String toString() {
    return 'TodoEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TasksInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
    required TResult Function() clearState,
    required TResult Function() syncRemoteAndLocalData,
    required TResult Function() clearTaskLocalStorage,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
    TResult? Function()? clearState,
    TResult? Function()? syncRemoteAndLocalData,
    TResult? Function()? clearTaskLocalStorage,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    TResult Function()? clearState,
    TResult Function()? syncRemoteAndLocalData,
    TResult Function()? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInit value) init,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(EditTask value) editTask,
    required TResult Function(TaskStateClear value) clearState,
    required TResult Function(SyncRemoteAndLocalData value)
        syncRemoteAndLocalData,
    required TResult Function(ClearTaskLocalStorage value)
        clearTaskLocalStorage,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInit value)? init,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(EditTask value)? editTask,
    TResult? Function(TaskStateClear value)? clearState,
    TResult? Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult? Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInit value)? init,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(EditTask value)? editTask,
    TResult Function(TaskStateClear value)? clearState,
    TResult Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TasksInit implements TodoEvent {
  const factory TasksInit() = _$TasksInitImpl;
}

/// @nodoc
abstract class _$$SaveTaskImplCopyWith<$Res> {
  factory _$$SaveTaskImplCopyWith(
          _$SaveTaskImpl value, $Res Function(_$SaveTaskImpl) then) =
      __$$SaveTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$SaveTaskImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$SaveTaskImpl>
    implements _$$SaveTaskImplCopyWith<$Res> {
  __$$SaveTaskImplCopyWithImpl(
      _$SaveTaskImpl _value, $Res Function(_$SaveTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$SaveTaskImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$SaveTaskImpl implements SaveTask {
  const _$SaveTaskImpl({required this.task});

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
            other is _$SaveTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTaskImplCopyWith<_$SaveTaskImpl> get copyWith =>
      __$$SaveTaskImplCopyWithImpl<_$SaveTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
    required TResult Function() clearState,
    required TResult Function() syncRemoteAndLocalData,
    required TResult Function() clearTaskLocalStorage,
  }) {
    return saveTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
    TResult? Function()? clearState,
    TResult? Function()? syncRemoteAndLocalData,
    TResult? Function()? clearTaskLocalStorage,
  }) {
    return saveTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    TResult Function()? clearState,
    TResult Function()? syncRemoteAndLocalData,
    TResult Function()? clearTaskLocalStorage,
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
    required TResult Function(TasksInit value) init,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(EditTask value) editTask,
    required TResult Function(TaskStateClear value) clearState,
    required TResult Function(SyncRemoteAndLocalData value)
        syncRemoteAndLocalData,
    required TResult Function(ClearTaskLocalStorage value)
        clearTaskLocalStorage,
  }) {
    return saveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInit value)? init,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(EditTask value)? editTask,
    TResult? Function(TaskStateClear value)? clearState,
    TResult? Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult? Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
  }) {
    return saveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInit value)? init,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(EditTask value)? editTask,
    TResult Function(TaskStateClear value)? clearState,
    TResult Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(this);
    }
    return orElse();
  }
}

abstract class SaveTask implements TodoEvent {
  const factory SaveTask({required final Task task}) = _$SaveTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$SaveTaskImplCopyWith<_$SaveTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$DeleteTaskImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl implements DeleteTask {
  const _$DeleteTaskImpl({required this.task});

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
            other is _$DeleteTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
    required TResult Function() clearState,
    required TResult Function() syncRemoteAndLocalData,
    required TResult Function() clearTaskLocalStorage,
  }) {
    return deleteTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
    TResult? Function()? clearState,
    TResult? Function()? syncRemoteAndLocalData,
    TResult? Function()? clearTaskLocalStorage,
  }) {
    return deleteTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    TResult Function()? clearState,
    TResult Function()? syncRemoteAndLocalData,
    TResult Function()? clearTaskLocalStorage,
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
    required TResult Function(TasksInit value) init,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(EditTask value) editTask,
    required TResult Function(TaskStateClear value) clearState,
    required TResult Function(SyncRemoteAndLocalData value)
        syncRemoteAndLocalData,
    required TResult Function(ClearTaskLocalStorage value)
        clearTaskLocalStorage,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInit value)? init,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(EditTask value)? editTask,
    TResult? Function(TaskStateClear value)? clearState,
    TResult? Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult? Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInit value)? init,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(EditTask value)? editTask,
    TResult Function(TaskStateClear value)? clearState,
    TResult Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class DeleteTask implements TodoEvent {
  const factory DeleteTask({required final Task task}) = _$DeleteTaskImpl;

  Task get task;
  @JsonKey(ignore: true)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditTaskImplCopyWith<$Res> {
  factory _$$EditTaskImplCopyWith(
          _$EditTaskImpl value, $Res Function(_$EditTaskImpl) then) =
      __$$EditTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? scheduleTime, Task task});
}

/// @nodoc
class __$$EditTaskImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$EditTaskImpl>
    implements _$$EditTaskImplCopyWith<$Res> {
  __$$EditTaskImplCopyWithImpl(
      _$EditTaskImpl _value, $Res Function(_$EditTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleTime = freezed,
    Object? task = null,
  }) {
    return _then(_$EditTaskImpl(
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

class _$EditTaskImpl implements EditTask {
  const _$EditTaskImpl({required this.scheduleTime, required this.task});

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
            other is _$EditTaskImpl &&
            (identical(other.scheduleTime, scheduleTime) ||
                other.scheduleTime == scheduleTime) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleTime, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskImplCopyWith<_$EditTaskImpl> get copyWith =>
      __$$EditTaskImplCopyWithImpl<_$EditTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
    required TResult Function() clearState,
    required TResult Function() syncRemoteAndLocalData,
    required TResult Function() clearTaskLocalStorage,
  }) {
    return editTask(scheduleTime, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
    TResult? Function()? clearState,
    TResult? Function()? syncRemoteAndLocalData,
    TResult? Function()? clearTaskLocalStorage,
  }) {
    return editTask?.call(scheduleTime, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    TResult Function()? clearState,
    TResult Function()? syncRemoteAndLocalData,
    TResult Function()? clearTaskLocalStorage,
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
    required TResult Function(TasksInit value) init,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(EditTask value) editTask,
    required TResult Function(TaskStateClear value) clearState,
    required TResult Function(SyncRemoteAndLocalData value)
        syncRemoteAndLocalData,
    required TResult Function(ClearTaskLocalStorage value)
        clearTaskLocalStorage,
  }) {
    return editTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInit value)? init,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(EditTask value)? editTask,
    TResult? Function(TaskStateClear value)? clearState,
    TResult? Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult? Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
  }) {
    return editTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInit value)? init,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(EditTask value)? editTask,
    TResult Function(TaskStateClear value)? clearState,
    TResult Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (editTask != null) {
      return editTask(this);
    }
    return orElse();
  }
}

abstract class EditTask implements TodoEvent {
  const factory EditTask(
      {required final DateTime? scheduleTime,
      required final Task task}) = _$EditTaskImpl;

  DateTime? get scheduleTime;
  Task get task;
  @JsonKey(ignore: true)
  _$$EditTaskImplCopyWith<_$EditTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TaskStateClearImplCopyWith<$Res> {
  factory _$$TaskStateClearImplCopyWith(_$TaskStateClearImpl value,
          $Res Function(_$TaskStateClearImpl) then) =
      __$$TaskStateClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TaskStateClearImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$TaskStateClearImpl>
    implements _$$TaskStateClearImplCopyWith<$Res> {
  __$$TaskStateClearImplCopyWithImpl(
      _$TaskStateClearImpl _value, $Res Function(_$TaskStateClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TaskStateClearImpl implements TaskStateClear {
  const _$TaskStateClearImpl();

  @override
  String toString() {
    return 'TodoEvent.clearState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TaskStateClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
    required TResult Function() clearState,
    required TResult Function() syncRemoteAndLocalData,
    required TResult Function() clearTaskLocalStorage,
  }) {
    return clearState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
    TResult? Function()? clearState,
    TResult? Function()? syncRemoteAndLocalData,
    TResult? Function()? clearTaskLocalStorage,
  }) {
    return clearState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    TResult Function()? clearState,
    TResult Function()? syncRemoteAndLocalData,
    TResult Function()? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInit value) init,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(EditTask value) editTask,
    required TResult Function(TaskStateClear value) clearState,
    required TResult Function(SyncRemoteAndLocalData value)
        syncRemoteAndLocalData,
    required TResult Function(ClearTaskLocalStorage value)
        clearTaskLocalStorage,
  }) {
    return clearState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInit value)? init,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(EditTask value)? editTask,
    TResult? Function(TaskStateClear value)? clearState,
    TResult? Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult? Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
  }) {
    return clearState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInit value)? init,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(EditTask value)? editTask,
    TResult Function(TaskStateClear value)? clearState,
    TResult Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (clearState != null) {
      return clearState(this);
    }
    return orElse();
  }
}

abstract class TaskStateClear implements TodoEvent {
  const factory TaskStateClear() = _$TaskStateClearImpl;
}

/// @nodoc
abstract class _$$SyncRemoteAndLocalDataImplCopyWith<$Res> {
  factory _$$SyncRemoteAndLocalDataImplCopyWith(
          _$SyncRemoteAndLocalDataImpl value,
          $Res Function(_$SyncRemoteAndLocalDataImpl) then) =
      __$$SyncRemoteAndLocalDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SyncRemoteAndLocalDataImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$SyncRemoteAndLocalDataImpl>
    implements _$$SyncRemoteAndLocalDataImplCopyWith<$Res> {
  __$$SyncRemoteAndLocalDataImplCopyWithImpl(
      _$SyncRemoteAndLocalDataImpl _value,
      $Res Function(_$SyncRemoteAndLocalDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SyncRemoteAndLocalDataImpl implements SyncRemoteAndLocalData {
  const _$SyncRemoteAndLocalDataImpl();

  @override
  String toString() {
    return 'TodoEvent.syncRemoteAndLocalData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncRemoteAndLocalDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
    required TResult Function() clearState,
    required TResult Function() syncRemoteAndLocalData,
    required TResult Function() clearTaskLocalStorage,
  }) {
    return syncRemoteAndLocalData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
    TResult? Function()? clearState,
    TResult? Function()? syncRemoteAndLocalData,
    TResult? Function()? clearTaskLocalStorage,
  }) {
    return syncRemoteAndLocalData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    TResult Function()? clearState,
    TResult Function()? syncRemoteAndLocalData,
    TResult Function()? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (syncRemoteAndLocalData != null) {
      return syncRemoteAndLocalData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInit value) init,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(EditTask value) editTask,
    required TResult Function(TaskStateClear value) clearState,
    required TResult Function(SyncRemoteAndLocalData value)
        syncRemoteAndLocalData,
    required TResult Function(ClearTaskLocalStorage value)
        clearTaskLocalStorage,
  }) {
    return syncRemoteAndLocalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInit value)? init,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(EditTask value)? editTask,
    TResult? Function(TaskStateClear value)? clearState,
    TResult? Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult? Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
  }) {
    return syncRemoteAndLocalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInit value)? init,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(EditTask value)? editTask,
    TResult Function(TaskStateClear value)? clearState,
    TResult Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (syncRemoteAndLocalData != null) {
      return syncRemoteAndLocalData(this);
    }
    return orElse();
  }
}

abstract class SyncRemoteAndLocalData implements TodoEvent {
  const factory SyncRemoteAndLocalData() = _$SyncRemoteAndLocalDataImpl;
}

/// @nodoc
abstract class _$$ClearTaskLocalStorageImplCopyWith<$Res> {
  factory _$$ClearTaskLocalStorageImplCopyWith(
          _$ClearTaskLocalStorageImpl value,
          $Res Function(_$ClearTaskLocalStorageImpl) then) =
      __$$ClearTaskLocalStorageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTaskLocalStorageImplCopyWithImpl<$Res>
    extends _$TodoEventCopyWithImpl<$Res, _$ClearTaskLocalStorageImpl>
    implements _$$ClearTaskLocalStorageImplCopyWith<$Res> {
  __$$ClearTaskLocalStorageImplCopyWithImpl(_$ClearTaskLocalStorageImpl _value,
      $Res Function(_$ClearTaskLocalStorageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearTaskLocalStorageImpl implements ClearTaskLocalStorage {
  const _$ClearTaskLocalStorageImpl();

  @override
  String toString() {
    return 'TodoEvent.clearTaskLocalStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTaskLocalStorageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) deleteTask,
    required TResult Function(DateTime? scheduleTime, Task task) editTask,
    required TResult Function() clearState,
    required TResult Function() syncRemoteAndLocalData,
    required TResult Function() clearTaskLocalStorage,
  }) {
    return clearTaskLocalStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? deleteTask,
    TResult? Function(DateTime? scheduleTime, Task task)? editTask,
    TResult? Function()? clearState,
    TResult? Function()? syncRemoteAndLocalData,
    TResult? Function()? clearTaskLocalStorage,
  }) {
    return clearTaskLocalStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? deleteTask,
    TResult Function(DateTime? scheduleTime, Task task)? editTask,
    TResult Function()? clearState,
    TResult Function()? syncRemoteAndLocalData,
    TResult Function()? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (clearTaskLocalStorage != null) {
      return clearTaskLocalStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TasksInit value) init,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(DeleteTask value) deleteTask,
    required TResult Function(EditTask value) editTask,
    required TResult Function(TaskStateClear value) clearState,
    required TResult Function(SyncRemoteAndLocalData value)
        syncRemoteAndLocalData,
    required TResult Function(ClearTaskLocalStorage value)
        clearTaskLocalStorage,
  }) {
    return clearTaskLocalStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TasksInit value)? init,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(DeleteTask value)? deleteTask,
    TResult? Function(EditTask value)? editTask,
    TResult? Function(TaskStateClear value)? clearState,
    TResult? Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult? Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
  }) {
    return clearTaskLocalStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TasksInit value)? init,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(DeleteTask value)? deleteTask,
    TResult Function(EditTask value)? editTask,
    TResult Function(TaskStateClear value)? clearState,
    TResult Function(SyncRemoteAndLocalData value)? syncRemoteAndLocalData,
    TResult Function(ClearTaskLocalStorage value)? clearTaskLocalStorage,
    required TResult orElse(),
  }) {
    if (clearTaskLocalStorage != null) {
      return clearTaskLocalStorage(this);
    }
    return orElse();
  }
}

abstract class ClearTaskLocalStorage implements TodoEvent {
  const factory ClearTaskLocalStorage() = _$ClearTaskLocalStorageImpl;
}

/// @nodoc
mixin _$TodoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function()? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInitial value) initial,
    required TResult Function(_TodoLoading value) loading,
    required TResult Function(_TodoLoaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    TResult Function(_Failed value)? failed,
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
    required TResult Function() failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function()? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function()? failed,
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
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    TResult Function(_Failed value)? failed,
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
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function()? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function()? failed,
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
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    TResult Function(_Failed value)? failed,
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
    required TResult Function() failed,
  }) {
    return loaded(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function()? failed,
  }) {
    return loaded?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function()? failed,
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
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    TResult Function(_Failed value)? failed,
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

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$TodoStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl();

  @override
  String toString() {
    return 'TodoState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Task> tasks) loaded,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Task> tasks)? loaded,
    TResult? Function()? failed,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Task> tasks)? loaded,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoInitial value) initial,
    required TResult Function(_TodoLoading value) loading,
    required TResult Function(_TodoLoaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TodoInitial value)? initial,
    TResult? Function(_TodoLoading value)? loading,
    TResult? Function(_TodoLoaded value)? loaded,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoInitial value)? initial,
    TResult Function(_TodoLoading value)? loading,
    TResult Function(_TodoLoaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements TodoState {
  const factory _Failed() = _$FailedImpl;
}
