import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failure/failures.dart';
import 'package:todo_app/core/interactor/usecase.dart';
import 'package:todo_app/feature/todo/domain/repository/todo_repository.dart';
import 'package:todo_app/feature/todo/infrastructure/model/todo_model.dart';

class UpdateTodoUsecase implements UseCase<bool, Todo> {
  UpdateTodoUsecase(this.repository);
  final TodoRepository repository;
  @override
  Future<Either<Failure, bool>> call(Todo item) {
    return repository.updateTodo(item);
  }
}
