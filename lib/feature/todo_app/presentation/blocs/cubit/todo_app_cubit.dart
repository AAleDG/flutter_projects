import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects/feature/todo_app/presentation/blocs/cubit/todo_app_state.dart';

class TodoAppCubit extends Cubit<TodoAppState> {
  final TextEditingController descriptionController = TextEditingController();
  TodoAppCubit()
      : super(
          const TodoAppInitialState(),
        );

  void addNewDescription(String newDescription) {}

  void addNewPriotity(String newPriority) {}

  void emitLoading() {
    emit(
      const TodoAppState.loading(),
    );
  }
}
