import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'package:to_do_app/core/migration/constants.dart';
import 'package:to_do_app/core/notifications/constants.dart';
import 'package:to_do_app/features/auth/domain/models/acount.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';
import 'package:to_do_app/firebase_options.dart';
import 'package:to_do_app/locator/injection.dart';

import 'package:to_do_app/core/widgets/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await AwesomeNotifications().initialize(null, myNotifies);

  Hive.registerAdapter<Task>(
    TaskAdapter(),
  );

  Hive.registerAdapter<Acount>(
    AcountAdapter(),
  );

  configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // await migrations.migrate();

  runApp(
    MyApp(),
  );
}
