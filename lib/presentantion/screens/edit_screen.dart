import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:to_do_app/application/bloc/todo_bloc.dart';
import 'package:to_do_app/domain/models/todo_model.dart';

@RoutePage()
class EditScreen extends StatelessWidget {
  final Task task;

  const EditScreen({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController =
        TextEditingController(text: task.title);
    task.title = titleController.text;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: titleController,
          ),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<TodoBloc, TodoState>(
            builder: (context, event) {
              return ElevatedButton(
                onPressed: () async {
                  task.title = titleController.text;

                  context.read<TodoBloc>().add(
                        EditTaskEvent(task: task),
                      );
                  context.router.pop();
                },
                child: const Text('ddd'),
              );
            },
          ),
        ],
      ),
    );
  }
}
