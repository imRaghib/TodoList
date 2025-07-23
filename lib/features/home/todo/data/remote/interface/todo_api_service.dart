import '../../../../../../core/dio/remote_response.dart';
import '../../models/todo.dart';

abstract class TodoApiService {
  Future<RemoteResponse<List<Todo>>> getTodos(String userId);

  Future<RemoteResponse<Todo>> addTodo(Todo todo);

  Future<RemoteResponse<Todo>> updateTodo(Todo todo);

  Future<RemoteResponse<bool>> deleteTodo(String todoId);
}
