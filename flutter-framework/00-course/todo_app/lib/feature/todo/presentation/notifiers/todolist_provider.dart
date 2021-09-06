import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/app/screen/main_provider.dart';
import 'package:todo_app/core/interactor/usecase.dart';
import 'package:todo_app/feature/todo/domain/interactor/get_todolist_use_case.dart';
import 'package:todo_app/feature/todo/infrastructure/model/todo_model.dart';

final todoListProvider =
    StateNotifierProvider<TodoListStateNotifier, List<Todo>>((ref) {
  final usecase = ref.watch(getTodolistUscaseProvider);
  return TodoListStateNotifier([], usecase: usecase);
});

class TodoListStateNotifier extends StateNotifier<List<Todo>> {
  TodoListStateNotifier(List<Todo> state, {required this.usecase})
      : super(state);
  final GetTodoListUsecase usecase;
  Future<void> fetch() async {
    final result = await usecase.call(NoParams());
    state = result.fold((l) => [], (r) => r);
  }
}
