import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/features/tasks/data/repository/task_impl.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';

part 'todo_event.dart';
part 'todo_state.dart';
part 'todo_bloc.freezed.dart';

@injectable
class TodoBloc extends Bloc<TodoEvent, TodoState> {
  final TaskRepositoryImpl taskRepositoryImpl;

  TodoBloc({required this.taskRepositoryImpl})
      : super(
          const TodoState.initial(),
        ) {
    on<SaveTask>(_saveTask);
    on<DeleteTask>(_deleteTask);

    on<EditTask>(_editTask);

    on<TasksInit>(_init);
  }

  void _init(TasksInit event, Emitter<TodoState> emit) async {
    emit(
      const TodoState.loading(),
    );

    await taskRepositoryImpl.syncRemoteAndLocalData();
    final List<Task> tasks = await taskRepositoryImpl.getTasks();
    emit(
      TodoState.loaded(tasks: tasks),
    );
  }

  void _editTask(EditTask event, Emitter<TodoState> emit) async {
    emit(
      const TodoState.loading(),
    );

    await taskRepositoryImpl.editTask(
        task: event.task, scheduleTime: event.scheduleTime);

    final List<Task> tasks = await taskRepositoryImpl.getTasks();

    emit(
      TodoState.loaded(tasks: tasks),
    );
  }

  void _deleteTask(DeleteTask event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    await taskRepositoryImpl.removeTask(task: event.task);

    final List<Task> tasks = await taskRepositoryImpl.getTasks();

    emit(
      TodoState.loaded(tasks: tasks),
    );
  }

  void _saveTask(SaveTask event, Emitter<TodoState> emit) async {
    emit(const TodoState.loading());
    await taskRepositoryImpl.saveTask(task: event.task);
    final List<Task> tasks = await taskRepositoryImpl.getTasks();

    emit(
      TodoState.loaded(tasks: tasks),
    );
  }
}
