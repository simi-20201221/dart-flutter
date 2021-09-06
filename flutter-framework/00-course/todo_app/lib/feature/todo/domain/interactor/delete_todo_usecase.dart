import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failure/failures.dart';
import 'package:todo_app/core/interactor/usecase.dart';
import 'package:todo_app/feature/todo/domain/repository/todo_repository.dart';

class DeleteTodoUsecase implements UseCase<bool, String> {
  DeleteTodoUsecase(this.repository);
  final TodoRepository repository;
  @override
  Future<Either<Failure, bool>> call(String id) {
    return repository.deleteTodo(id);
  }
}
