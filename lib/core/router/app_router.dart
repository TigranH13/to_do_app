import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/domain/models/todo_model.dart';
import 'package:to_do_app/presentantion/screens/add_task_screen.dart';
import 'package:to_do_app/presentantion/screens/edit_screen.dart';
import 'package:to_do_app/presentantion/screens/home_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: AddTaskRoute.page),
        AutoRoute(page: EditRoute.page)
      ];
}
