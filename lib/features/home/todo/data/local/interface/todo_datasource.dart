import '../../models/todo.dart';

abstract class TodoLocalDataSource {
  Future<List<Todo>> getTodos();

  Future<void> saveTodos(List<Todo> todos);
}
