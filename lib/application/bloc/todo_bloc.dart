import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/infrasrtucture/repository/todos_impl.dart';

import 'package:to_do_app/domain/models/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TodosRepositoryImpl todosRepositoryImpl = TodosRepositoryImpl();
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
      await TodosRepositoryImpl().editTask(task: event.task);
      final todos = await todosRepositoryImpl.loadTasks();

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
      final todos = await todosRepositoryImpl.loadTasks();

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
        await TodosRepositoryImpl().deleteTask(id: event.id);
        final todos = await todosRepositoryImpl.loadTasks();

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
        await TodosRepositoryImpl().saveTask(task: event.task);
        final todos = await todosRepositoryImpl.loadTasks();

        emit(
          LoadedState(toDo: todos),
        );
      },
    );
  }
}
