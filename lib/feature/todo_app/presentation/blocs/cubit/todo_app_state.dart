import 'package:freezed_annotation/freezed_annotation.dart';


part 'todo_app_state.freezed.dart';

@freezed
class TodoAppState with _$TodoAppState {
  const factory TodoAppState.initial() = TodoAppInitialState;

  const factory TodoAppState.loading() = TodoAppLoadingState;

  const factory TodoAppState.loaded() = TodoAppLoadedState;

  
}
