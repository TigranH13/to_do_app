import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/application/bloc/todo_bloc.dart';
import 'package:to_do_app/core/router/app_router.dart';

import 'package:to_do_app/domain/models/todo_model.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (cn, state) {
          if (state is LoadedState) {
            List tasks = state.toDo;
            tasks.sort(
              ((a, b) => a.id.compareTo(b.id)),
            );
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
                                  .add(DeleteTaskEvent(task: task));
                            },
                            child: const Text('delete'),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                context.router.push(EditRoute(task: task));
                              },
                              child: const Text('edit'))
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
                )
              ],
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
