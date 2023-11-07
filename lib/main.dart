import 'package:flutter/material.dart';

import 'package:hive_flutter/adapters.dart';

import 'package:to_do_app/core/notifications/constants.dart';

import 'package:to_do_app/features/tasks/domain/models/task.dart';
import 'package:to_do_app/firebase_options.dart';
import 'package:to_do_app/core/locator/injection.dart';

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

  configureDependencies();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MyApp(),
  );
}
