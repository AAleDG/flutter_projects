import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/core/di/provider.dart';
import 'package:flutter_projects/feature/todo_app/presentation/blocs/cubit/todo_app_cubit.dart';
import 'package:flutter_projects/feature/todo_app/presentation/blocs/cubit/todo_app_state.dart';

@RoutePage<void>()
class TodoAddFieldPage extends StatefulWidget {
  const TodoAddFieldPage({super.key});

  @override
  State<TodoAddFieldPage> createState() => _TodoAddFieldPageState();
}

class _TodoAddFieldPageState extends State<TodoAddFieldPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      injector.get<TodoAppCubit>().emitLoading();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoAppCubit, TodoAppState>(
      listener: (context, state) {
        state.maybeMap(
          initial: (_) {
            print('ini');
          },
          loading: (_) {
            print('hello');
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Todo Add Field',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(
                16,
              ),
              shrinkWrap: true,
              children: [
                ListTile(
                  leading: const Icon(Icons.abc),
                  title: TextField(
                    controller:
                        injector.get<TodoAppCubit>().descriptionController,
                  ),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: const Icon(Icons.abc),
                  title: const Text('due'),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: const Icon(Icons.abc),
                  title: const Text('tre'),
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      8,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
