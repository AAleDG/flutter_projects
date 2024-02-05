import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage<void>()
class TodoAppPage extends StatelessWidget {
  const TodoAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Todo App',
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
                title: const Text('prova'),
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                  8,
                ))),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
