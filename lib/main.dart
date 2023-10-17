import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:to_do_app/domain/models/todo_model.dart';
import 'package:to_do_app/presentantion/core/widgets/app.dart';

void main() async {
  // await Hive.initFlutter();

  // Hive.registerAdapter(
  //   ToDoAdapter(),
  // );

  // await Hive.openBox<Task>('mybox');

  runApp(
    MyApp(),
  );
}
