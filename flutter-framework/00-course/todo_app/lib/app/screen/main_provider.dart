import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/feature/todo/domain/interactor/add_todo_usecase.dart';
import 'package:todo_app/feature/todo/domain/interactor/delete_todo_usecase.dart';
import 'package:todo_app/feature/todo/domain/interactor/get_todo_usecase.dart';
import 'package:todo_app/feature/todo/domain/interactor/get_todolist_use_case.dart';
import 'package:todo_app/feature/todo/domain/interactor/update_todo_usecase.dart';
import 'package:todo_app/feature/todo/domain/repository/todo_repository.dart';
import 'package:todo_app/feature/todo/infrastructure/data_source/mock_data_source/todo_mock_data_source.dart';
import 'package:todo_app/feature/todo/infrastructure/repository/todo_repository_impl.dart';

final todoDataSourceProvider =
    Provider<TodoMockDataSource>((ref) => TodoMockDataSourceImpl());

final todoRepositoryProvider = Provider<TodoRepository>((ref) =>
    TodoRepositoryImpl(mockDataSource: ref.watch(todoDataSourceProvider)));

final getTodolistUscaseProvider = Provider<GetTodoListUsecase>(
    (ref) => GetTodoListUsecase(ref.watch(todoRepositoryProvider)));
final getTodoUsecaseProvider = Provider<GetTodoUseCase>(
    (ref) => GetTodoUseCase(ref.watch(todoRepositoryProvider)));
final addTodoUsecaseProvider = Provider<AddTodoUsecase>(
    (ref) => AddTodoUsecase(ref.watch(todoRepositoryProvider)));

final updateTodoUsecaseProvider = Provider<UpdateTodoUsecase>(
    (ref) => UpdateTodoUsecase(ref.watch(todoRepositoryProvider)));
final deleteTodoUsecaseProvider = Provider<DeleteTodoUsecase>(
    (ref) => DeleteTodoUsecase(ref.watch(todoRepositoryProvider)));
