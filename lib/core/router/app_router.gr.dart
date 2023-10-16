// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddTaskRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AddTaskScreen(),
      );
    },
    EditRoute.name: (routeData) {
      final args = routeData.argsAs<EditRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditScreen(
          key: args.key,
          toDo: args.toDo,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
  };
}

/// generated route for
/// [AddTaskScreen]
class AddTaskRoute extends PageRouteInfo<void> {
  const AddTaskRoute({List<PageRouteInfo>? children})
      : super(
          AddTaskRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddTaskRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditScreen]
class EditRoute extends PageRouteInfo<EditRouteArgs> {
  EditRoute({
    Key? key,
    required ToDo toDo,
    List<PageRouteInfo>? children,
  }) : super(
          EditRoute.name,
          args: EditRouteArgs(
            key: key,
            toDo: toDo,
          ),
          initialChildren: children,
        );

  static const String name = 'EditRoute';

  static const PageInfo<EditRouteArgs> page = PageInfo<EditRouteArgs>(name);
}

class EditRouteArgs {
  const EditRouteArgs({
    this.key,
    required this.toDo,
  });

  final Key? key;

  final ToDo toDo;

  @override
  String toString() {
    return 'EditRouteArgs{key: $key, toDo: $toDo}';
  }
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
