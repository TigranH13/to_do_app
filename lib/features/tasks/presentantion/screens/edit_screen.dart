import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:to_do_app/features/tasks/application/bloc/todo_bloc.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';

@RoutePage()
class EditScreen extends StatelessWidget {
  final Task task;

  const EditScreen({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime? scheduleTime;
    final TextEditingController titleController =
        TextEditingController(text: task.title);

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
            onPressed: () async {
              context.read<TodoBloc>().add(
                    EditTask(
                      scheduleTime: scheduleTime,
                      task: Task(
                          timeStemp: DateTime.now(),
                          scheduleTime: task.scheduleTime,
                          id: task.id,
                          title: titleController.text),
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
