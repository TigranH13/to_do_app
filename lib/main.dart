import 'package:flutter/material.dart';

import 'package:to_do_app/core/migration/constants.dart';
import 'package:to_do_app/locator/injection.dart';

import 'package:to_do_app/presentantion/core/widgets/app.dart';

void main() async {
  configureDependencies();

  WidgetsFlutterBinding.ensureInitialized();

  await migrations.migrate();

  runApp(
    MyApp(),
  );
}
