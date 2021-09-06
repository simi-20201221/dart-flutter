import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failure/failures.dart';
import 'package:todo_app/core/interactor/usecase.dart';
import 'package:todo_app/feature/todo/domain/repository/todo_repository.dart';
import 'package:todo_app/feature/todo/infrastructure/model/todo_model.dart';

class GetTodoUseCase implements UseCase<Todo, String> {
  GetTodoUseCase(this.repository);
  final TodoRepository repository;
  @override
  Future<Either<Failure, Todo>> call(String id) {
    return repository.getTodo(id);
  }
}
