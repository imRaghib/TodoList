import '../../data/local/interface/todo_datasource.dart';
import '../../data/models/todo.dart';
import 'interfaces/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoLocalDataSource local;

  TodoRepositoryImpl(this.local);

  @override
  Future<List<Todo>> getTodos() => local.getTodos();

  @override
  Future<void> saveTodos(List<Todo> todos) async {
    await local.saveTodos(todos);
  }
}
