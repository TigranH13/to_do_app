import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:to_do_app/domain/models/task.dart';
import 'package:to_do_app/domain/repository/todos.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final ITodosRepository todosRepositoryImplWithIsr;

  TodoBloc({required this.todosRepositoryImplWithIsr})
      : super(
          const TodoState.initial(),
        ) {
    _saveTask();

    _deleteTask();

    _loadTasks();

    _editTask();
  }

  void _editTask() {
    return on<TaskEdit>((event, emit) async {
      emit(
        const TodoState.loading(),
      );
      await todosRepositoryImplWithIsr.editTask(
          task: event.task, scheduleTime: event.scheduleTime);
      final tasks = await todosRepositoryImplWithIsr.loadTasks();

      emit(
        TodoState.loaded(tasks: tasks),
      );
    });
  }

  void _loadTasks() {
    return on<TaskLoad>((event, emit) async {
      emit(
        const TodoState.loading(),
      );
      final tasks = await todosRepositoryImplWithIsr.loadTasks();

      emit(
        TodoState.loaded(tasks: tasks),
      );
    });
  }

  void _deleteTask() {
    return on<TaskDelete>(
      (event, emit) async {
        emit(
          const TodoState.loading(),
        );
        await todosRepositoryImplWithIsr.deleteTask(task: event.task);
        final todos = await todosRepositoryImplWithIsr.loadTasks();

        emit(
          TodoState.loaded(tasks: todos),
        );
      },
    );
  }

  void _saveTask() {
    return on<TaskSave>(
      (event, emit) async {
        emit(const TodoState.loading());
        await todosRepositoryImplWithIsr.saveTask(task: event.task);
        final tasks = await todosRepositoryImplWithIsr.loadTasks();

        emit(
          TodoState.loaded(tasks: tasks),
        );
      },
    );
  }
}
