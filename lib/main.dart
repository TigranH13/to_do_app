import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:to_do_app/core/migration/constants.dart';

import 'package:to_do_app/domain/models/task.dart';
import 'package:to_do_app/locator.dart';

import 'package:to_do_app/presentantion/core/widgets/app.dart';

void main() async {
  await setup();
  WidgetsFlutterBinding.ensureInitialized();

  await migrations.migrate();

  runApp(
    MyApp(),
  );
}
