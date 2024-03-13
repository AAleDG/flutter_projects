import 'package:flutter/material.dart';
import 'package:flutter_projects/core/presentation/bloc_provider.dart';

import 'core/di/provider.dart' as di;
import 'core/router/app_route.dart';

void main() async {
  di.registerCubit();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppMultiBlocProvider(
      child: MaterialApp.router(
        routerConfig: _appRouter.config(),
      ),
    );
  }
}
