import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';
import 'package:journey/journey.dart';
import 'package:to_do_app/core/migration/miagrate_hive_to_isar.dart';

import 'package:to_do_app/domain/models/todo_model.dart';
import 'package:to_do_app/presentantion/core/widgets/app.dart';

final journey = Journey(
  migrations: [MigrateHiveToIsar()],
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await journey.migrate();
  await Hive.initFlutter();

  // Hive.registerAdapter(
  //   ToDoAdapter(),
  // );

  // await Hive.openBox<Task>('mybox');

  runApp(
    MyApp(),
  );
}
