import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/infrasrtucture/repository/todos_impl.dart';

import 'package:to_do_app/domain/models/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodoBloc extends Bloc<TodoEvent, TodoState> {
  TodoBloc() : super(LoadingState()) {
    on<SaveTodoEvent>(
      (event, emit) async {
        emit(LoadingState());
        await TodosRepositoryImpl().saveTodo(event.todo);
        final todos = await TodosRepositoryImpl().loadTodos();

        emit(
          LoadedState(toDo: todos),
        );
      },
    );

    on<DeleteTodoEvent>(
      (event, emit) async {
        emit(
          LoadingState(),
        );
        await TodosRepositoryImpl().deleteTodo(event.id);
        final todos = await TodosRepositoryImpl().loadTodos();

        emit(
          LoadedState(toDo: todos),
        );
      },
    );

    on<LoadTodosEvent>((event, emit) async {
      emit(
        LoadingState(),
      );
      final todos = await TodosRepositoryImpl().loadTodos();

      emit(
        LoadedState(toDo: todos),
      );
    });

    on<EditTodoEvent>((event, emit) async {
      emit(
        LoadingState(),
      );
      await TodosRepositoryImpl().editTask(event.todo);
      final todos = await TodosRepositoryImpl().loadTodos();

      emit(
        LoadedState(toDo: todos),
      );
    });
  }
}
