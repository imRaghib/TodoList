import '../../../data/models/todo.dart';

abstract class TodoRepository {
  Future<List<Todo>> getTodos();

  Future<void> saveTodos(List<Todo> todos);
}
