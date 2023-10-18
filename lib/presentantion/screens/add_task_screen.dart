import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/application/bloc/todo_bloc.dart';
import 'package:to_do_app/domain/models/todo_model.dart';
import 'package:to_do_app/core/utils/get_random_id.dart';

@RoutePage()
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController titleController = TextEditingController();
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
            builder: (context, _) {
              return ElevatedButton(
                onPressed: () {
                  context.read<TodoBloc>().add(
                        SaveTaskEvent(
                          task: Task(
                            id: Utils().getRandomId(),
                            title: titleController.text,
                          ),
                        ),
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
