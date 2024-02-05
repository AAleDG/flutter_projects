// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    TodoAppRoute.name: (routeData) {
      return AutoRoutePage<void>(
        routeData: routeData,
        child: const TodoAppPage(),
      );
    }
  };
}

/// generated route for
/// [TodoAppPage]
class TodoAppRoute extends PageRouteInfo<void> {
  const TodoAppRoute({List<PageRouteInfo>? children})
      : super(
          TodoAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'TodoAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
