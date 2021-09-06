import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failure/failures.dart';
import 'package:todo_app/feature/todo/infrastructure/model/todo_model.dart';

abstract class TodoRepository {
  Future<Either<Failure, List<Todo>>> getTodolist();
  Future<Either<Failure, bool>> updateTodo(Todo item);
  Future<Either<Failure, bool>> addTodo(Todo item);
  Future<Either<Failure, bool>> deleteTodo(String id);
  Future<Either<Failure, Todo>> getTodo(String id);
}
