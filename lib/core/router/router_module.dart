import 'package:auto_route/auto_route.dart';
import 'package:flutter_projects/core/router/app_route.dart';

class RouterModule {
  const RouterModule._();

  static final todoAppPage = AutoRoute(
    page: TodoAppRoute.page,
    initial: true,
  );

  static final routerModuleList = [
    todoAppPage,
  ];
}
