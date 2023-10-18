import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:to_do_app/core/migration/constants.dart';

import 'package:to_do_app/domain/models/task.dart';

import 'package:to_do_app/presentantion/core/widgets/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await migrations.migrate();

  runApp(
    MyApp(),
  );
}
