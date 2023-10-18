import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/data/repository/todos_impl_wtih_isr.dart';

import 'package:to_do_app/domain/models/task.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodosRepositoryImplWithIsr todosRepositoryImplWithIsr =
      TodosRepositoryImplWithIsr();
  TodoBloc() : super(const LoadingState()) {
    _saveTask();

    _deleteTask();

    _loadTasks();

    _editTask();
  }

  void _editTask() {
    return on<EditTaskEvent>((event, emit) async {
      emit(
        const LoadingState(),
      );
      await todosRepositoryImplWithIsr.editTask(task: event.task);
      final todos = await todosRepositoryImplWithIsr.loadTasks();

      emit(
        LoadedState(toDo: todos),
      );
    });
  }

  void _loadTasks() {
    return on<LoadTasksEvent>((event, emit) async {
      emit(
        const LoadingState(),
      );
      final todos = await todosRepositoryImplWithIsr.loadTasks();

      emit(
        LoadedState(toDo: todos),
      );
    });
  }

  void _deleteTask() {
    return on<DeleteTaskEvent>(
      (event, emit) async {
        emit(
          const LoadingState(),
        );
        await todosRepositoryImplWithIsr.deleteTask(task: event.task);
        final todos = await todosRepositoryImplWithIsr.loadTasks();

        emit(
          LoadedState(toDo: todos),
        );
      },
    );
  }

  void _saveTask() {
    return on<SaveTaskEvent>(
      (event, emit) async {
        emit(const LoadingState());
        await todosRepositoryImplWithIsr.saveTask(task: event.task);
        final todos = await todosRepositoryImplWithIsr.loadTasks();

        emit(
          LoadedState(toDo: todos),
        );
      },
    );
  }
}
