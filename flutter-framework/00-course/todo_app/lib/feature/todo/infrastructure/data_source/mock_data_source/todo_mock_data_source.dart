import 'package:todo_app/feature/todo/infrastructure/model/todo_model.dart';

abstract class TodoMockDataSource {
  Future<List<Todo>> getTodolist();

  Future<Todo> getTodo(String id);
  Future<bool> updateTodo(Todo item);
  Future<bool> addTodo(Todo item);
  Future<bool> deleteTodo(String id);
}

class TodoMockDataSourceImpl implements TodoMockDataSource {
  List<Todo> data = [
    Todo(id: '1', title: 'Learn Dart Language'),
    Todo(id: '2', title: 'Learn Flutter Framework'),
    Todo(id: '3', title: 'Learn Java Language'),
    Todo(id: '5', title: 'Learn Spring Framework'),
    Todo(id: '4', title: 'Relax: Play Chinese Chess', isDone: true),
  ];
  @override
  Future<bool> deleteTodo(String id) async {
    final item = data.firstWhere(
      (element) => element.id == id,
    );
    return data.remove(item);
  }

  @override
  Future<Todo> getTodo(String id) async {
    return data.firstWhere(
      (element) => element.id == id,
    );
  }

  @override
  Future<List<Todo>> getTodolist() async {
    return List.from(data);
  }

  @override
  Future<bool> updateTodo(Todo item) async {
    final index = data.indexWhere((element) => element.id == item.id);
    if (index < 0) {
      return false;
    }
    data[index] = item;
    return true;
  }

  @override
  Future<bool> addTodo(Todo item) async {
    final index = data.indexWhere((element) => element.id == item.id);
    if (index < 0) {
      data.add(item);
      return true;
    }
    return false;
  }
}
