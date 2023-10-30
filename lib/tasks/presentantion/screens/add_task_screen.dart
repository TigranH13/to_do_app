import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:to_do_app/core/utils/get_random_id.dart';
import 'package:to_do_app/tasks/application/bloc/todo_bloc.dart';
import 'package:to_do_app/tasks/domain/models/task.dart';

@RoutePage()
class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime scheduleTime = DateTime.now();
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
          ElevatedButton(
            onPressed: () {
              context.read<TodoBloc>().add(
                    SaveTask(
                      task: Task(
                        timeStemp: DateTime.now(),
                        scheduleTime: scheduleTime,
                        forId: Utils().getRandomId(),
                        title: titleController.text,
                      ),
                    ),
                  );
              context.router.pop();
            },
            child: const Text('ddd'),
          ),
          TextButton(
            onPressed: () {
              DatePicker.showDateTimePicker(
                context,
                showTitleActions: true,
                onChanged: (date) => scheduleTime = date,
                onConfirm: (date) {},
              );
            },
            child: const Text(
              'Select Date Time',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
