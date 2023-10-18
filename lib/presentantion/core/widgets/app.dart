import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/application/bloc/todo_bloc.dart';
import 'package:to_do_app/core/router/app_router.dart';
import 'package:to_do_app/locator.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => sl.get<TodoBloc>()
        ..add(
          LoadTasksEvent(),
        ),
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
