import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:to_do_app/features/auth/presentation/screens/qr_scan.dart';
import 'package:to_do_app/features/auth/presentation/screens/qr_screen.dart';

import 'package:to_do_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:to_do_app/features/tasks/domain/models/task.dart';
import 'package:to_do_app/features/tasks/presentantion/screens/add_task_screen.dart';
import 'package:to_do_app/features/tasks/presentantion/screens/edit_screen.dart';

import '../../features/auth/presentation/screens/sign_up_screen.dart';

import '../../features/tasks/presentantion/screens/home_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: QrRoute.page),
        AutoRoute(page: QrScannerRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AddTaskRoute.page),
        AutoRoute(page: EditRoute.page),
        AutoRoute(page: SignInRoute.page, initial: true),
        AutoRoute(page: SignUpRoute.page),
      ];
}
