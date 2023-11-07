import 'package:dartz/dartz.dart' hide Task;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/core/error/failures.dart';

import 'package:to_do_app/features/tasks/domain/i_tasks_repository.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ITasksRepository taskRepositoryImpl;

  TodoBloc({required this.taskRepositoryImpl})
      : super(
          const TodoState.initial(),
        ) {
    on<SaveTask>(_saveTask);

    on<DeleteTask>(_deleteTask);

    on<EditTask>(
      _editTask,
    );

    on<TasksInit>(_init);

    on<SyncRemoteAndLocalData>(_syncRemoteAndLocalData);

    on<ClearTaskLocalStorage>(_clearTaskLocalStorage);
  }

  void _init(TasksInit event, Emitter<TodoState> emit) async {
    emit(
      const TodoState.loading(),
    );

    try {
      await taskRepositoryImpl.syncRemoteAndLocalData();
      final Either<Failure, List<Task>> getTasks =
          await taskRepositoryImpl.getTasks();
      getTasks.fold(
        (l) => emit(
          const TodoState.failed(),
        ),
        (r) {
          emit(
            TodoState.loaded(
              tasks: r,
            ),
          );
        },
      );
    } on Exception {
      emit(
        const TodoState.failed(),
      );
    }
  }

  void _editTask(EditTask event, Emitter<TodoState> emit) async {
    emit(
      const TodoState.loading(),
    );

    try {
      await taskRepositoryImpl.editTask(
          task: event.task, scheduleTime: event.scheduleTime);
      Either<Failure, List<Task>> getTasks =
          await taskRepositoryImpl.getTasks();

      getTasks.fold(
        (l) => emit(
          const TodoState.failed(),
        ),
        (r) => emit(
          TodoState.loaded(tasks: r),
        ),
      );
    } catch (e) {
      emit(
        const TodoState.failed(),
      );
    }
  }

  void _deleteTask(DeleteTask event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());

    try {
      await taskRepositoryImpl.removeTask(task: event.task);
      final Either<Failure, List<Task>> getTasks =
          await taskRepositoryImpl.getTasks();
      getTasks.fold(
        (l) => emit(
          const TodoState.failed(),
        ),
        (r) => emit(
          TodoState.loaded(tasks: r),
        ),
      );
    } catch (e) {
      emit(const TodoState.failed());
    }
  }

  void _saveTask(SaveTask event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());

    try {
      await taskRepositoryImpl.saveTask(task: event.task);
      final Either<Failure, List<Task>> getTasks =
          await taskRepositoryImpl.getTasks();
      getTasks.fold(
        (l) => emit(
          const TodoState.failed(),
        ),
        (r) => emit(
          TodoState.loaded(tasks: r),
        ),
      );
    } catch (e) {
      emit(const TodoState.failed());
    }
  }

  void _syncRemoteAndLocalData(
      SyncRemoteAndLocalData event, Emitter<TodoState> emit) async {
    try {
      await taskRepositoryImpl.syncRemoteAndLocalData();
    } catch (e) {
      emit(const TodoState.failed());
    }
  }

  void _clearTaskLocalStorage(
      ClearTaskLocalStorage event, Emitter<TodoState> emit) async {
    try {
      await taskRepositoryImpl.syncRemoteAndLocalData();
    } catch (e) {
      emit(const TodoState.failed());
    }
  }
}
