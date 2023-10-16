import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:to_do_app/application/bloc/todo_bloc.dart';
import 'package:to_do_app/core/router/app_router.dart';
import 'package:to_do_app/domain/models/todo_model.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(
    ToDoAdapter(),
  );

  await Hive.openBox<ToDo>('mybox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => TodoBloc()
        ..add(
          LoadTodosEvent(),
        ),
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
