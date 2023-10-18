import 'package:get_it/get_it.dart';
import 'package:to_do_app/application/bloc/todo_bloc.dart';
import 'package:to_do_app/data/repository/todos_impl_wtih_isr.dart';
import 'package:to_do_app/domain/repository/todos.dart';

final sl = GetIt.instance;

Future<void> setup() async {
  print('anuma');
  sl.registerFactory<TodoBloc>(
    () => TodoBloc(todosRepositoryImplWithIsr: sl()),
  );

  sl.registerLazySingleton<ITodosRepository>(
    () => TodosRepositoryImplWithIsr(),
  );
}
