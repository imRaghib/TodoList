import 'package:fpdart/fpdart.dart';

import '../../../../../../core/di/injection_container.dart';
import '../../../../../../core/dio/results.dart';
import '../../../data/models/todo.dart';
import '../todo_repository_impl.dart';

final TodoRepository todoRepository = serviceLocator.get<TodoRepositoryImpl>();

abstract class TodoRepository {
  Future<Either<AppError, List<Todo>>> getTodos({required userId});

  Future<Either<AppError, Todo>> addTodo({required Todo todo});

  Future<Either<AppError, Todo>> updateTodo({required Todo todo});

  Future<Either<AppError, bool>> deleteTodo({required String id});
}
