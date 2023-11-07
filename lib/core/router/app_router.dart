import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:to_do_app/auth/presentation/screens/sign_in_screen.dart';
import 'package:to_do_app/auth/presentation/screens/sign_up_screen.dart';

import 'package:to_do_app/tasks/presentantion/screens/add_task_screen.dart';
import 'package:to_do_app/tasks/presentantion/screens/edit_screen.dart';
import 'package:to_do_app/tasks/presentantion/screens/home_screen.dart';
import 'package:to_do_app/tasks/domain/models/task.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AddTaskRoute.page),
        AutoRoute(page: EditRoute.page),
        AutoRoute(page: SignInRoute.page, initial: true),
        AutoRoute(page: SignUpRoute.page),
      ];
}
