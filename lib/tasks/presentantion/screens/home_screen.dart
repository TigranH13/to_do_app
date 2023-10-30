import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/auth/application/auth_bloc.dart';

import 'package:to_do_app/core/router/app_router.dart';
import 'package:to_do_app/tasks/application/bloc/todo_bloc.dart';
import 'package:to_do_app/tasks/domain/models/task.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          isNotSigned: (value) {
            context.router.replace(const SignInRoute());
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.red,
        body: BlocBuilder<TodoBloc, TodoState>(builder: (context, state) {
          return state.map(
            initial: (value) => const SizedBox(),
            loading: (value) => const CircularProgressIndicator(),
            loaded: (value) {
              final List<Task> tasks = value.tasks;

              return Column(
                children: [
                  SizedBox(
                    height: 450,
                    child: ListView.builder(
                      itemCount: tasks.length,
                      itemBuilder: (context, index) {
                        final Task task = tasks[index];
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(task.title),
                            ElevatedButton(
                              onPressed: () {
                                context
                                    .read<TodoBloc>()
                                    .add(DeleteTask(task: task));
                              },
                              child: const Text('delete'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                context.router.push(
                                  EditRoute(task: task),
                                );
                              },
                              child: const Text('edit'),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => context.router.push(
                      const AddTaskRoute(),
                    ),
                    child: const Text('add task'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<AuthBloc>().add(const SignOut());
                    },
                    child: const Text('logout'),
                  )
                ],
              );
            },
          );
        }),
      ),
    );
  }
}
