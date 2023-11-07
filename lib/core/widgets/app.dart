import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:to_do_app/auth/application/auth_bloc.dart';

import 'package:to_do_app/core/router/app_router.dart';
import 'package:to_do_app/locator/injection.dart';
import 'package:to_do_app/tasks/application/bloc/todo_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (BuildContext context) => getIt.get<TodoBloc>()
              ..add(
                const TasksInit(),
              ),
          ),
          BlocProvider(
            create: (BuildContext context) => getIt.get<AuthBloc>()
              ..add(
                const InitAuth(),
              ),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: _appRouter.config(),
        ));
  }
}
