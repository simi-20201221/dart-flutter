import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failure/failures.dart';
import 'package:todo_app/core/interactor/usecase.dart';
import 'package:todo_app/feature/todo/domain/repository/todo_repository.dart';
import 'package:todo_app/feature/todo/infrastructure/model/todo_model.dart';

class GetTodoListUsecase implements UseCase<List<Todo>, NoParams> {
  GetTodoListUsecase(this.repository);
  final TodoRepository repository;
  @override
  Future<Either<Failure, List<Todo>>> call(NoParams params) {
    return repository.getTodolist();
  }
}
