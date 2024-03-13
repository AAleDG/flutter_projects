import 'package:flutter_projects/feature/todo_app/presentation/blocs/cubit/todo_app_cubit.dart';
import 'package:get_it/get_it.dart';

final injector = GetIt.instance;

Future<void> registerCubit() async {
  injector.registerSingleton<TodoAppCubit>(
    TodoAppCubit(),
  );
}
