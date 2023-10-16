import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/application/bloc/todo_bloc.dart';
import 'package:to_do_app/core/router/app_router.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodoBloc, TodoState>(
        builder: (cn, state) {
          if (state is LoadedState) {
            List todos = state.toDo;
            todos.sort(
              ((a, b) => a.id.compareTo(b.id)),
            );
            return Column(
              children: [
                SizedBox(
                  height: 450,
                  child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (context, index) {
                      return Text(todos[index].title);
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
