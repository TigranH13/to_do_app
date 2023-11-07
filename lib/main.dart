import 'package:flutter/material.dart';

import 'package:to_do_app/core/migration/constants.dart';
import 'package:to_do_app/core/notifications/constants.dart';
import 'package:to_do_app/firebase_options.dart';
import 'package:to_do_app/locator/injection.dart';

import 'package:to_do_app/core/widgets/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

void main() async {
  AwesomeNotifications().initialize(null, myNotifies);

  configureDependencies();

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await migrations.migrate();

  runApp(
    MyApp(),
  );
}
