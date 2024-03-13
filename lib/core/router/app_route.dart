import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projects/feature/todo_app/presentation/pages/todo_add_field_page.dart';
import 'package:flutter_projects/feature/todo_app/presentation/pages/todo_app_page.dart';

import 'router_module.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super();
  @override
  List<AutoRoute> get routes => [
        ...RouterModule.routerModuleList,
      ];
}
