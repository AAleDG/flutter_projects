import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/feature/todo_app/presentation/blocs/cubit/todo_app_cubit.dart';

class AppMultiBlocProvider extends StatelessWidget {
  final Widget child;

  const AppMultiBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TodoAppCubit>(
          create: (context) => TodoAppCubit(),
        ),
      ],
      child: child,
    );
  }
}
