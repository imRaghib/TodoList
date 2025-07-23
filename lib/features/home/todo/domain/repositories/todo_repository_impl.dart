import 'package:fpdart/src/either.dart';
import 'package:supabase_demo/core/dio/results.dart';
import 'package:supabase_demo/features/home/todo/data/models/todo.dart';
import 'package:supabase_demo/features/home/todo/data/remote/interface/todo_api_service.dart';

import '../../../../../core/config/enums.dart';
import '../../../../../core/utils/network/network.dart';
import 'interfaces/todo_repository.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoApiService todoApiService;

  TodoRepositoryImpl(this.todoApiService);

  @override
  Future<Either<AppError, List<Todo>>> getTodos({required userId}) async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.auth_failed_invalid_response.name),
      );
    }
    try {
      final result = await todoApiService.getTodos(userId);
      if (result.data != null) {
        return Right(result.data!);
      }

      return Left(AppError(message: result.message));
    } catch (e) {
      return Left(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<AppError, Todo>> addTodo({required Todo todo}) async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.auth_failed_invalid_response.name),
      );
    }
    try {
      final result = await todoApiService.addTodo(todo);
      if (result.data != null) {
        return Right(result.data!);
      }

      return Left(AppError(message: result.message));
    } catch (e) {
      return Left(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<AppError, bool>> deleteTodo({required String id}) async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.auth_failed_invalid_response.name),
      );
    }
    try {
      final result = await todoApiService.deleteTodo(id);
      if (result.data != null) {
        return Right(true);
      }

      return Left(AppError(message: result.message));
    } catch (e) {
      return Left(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<AppError, Todo>> updateTodo({required Todo todo}) async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.auth_failed_invalid_response.name),
      );
    }
    try {
      final result = await todoApiService.updateTodo(todo);
      if (result.data != null) {
        return Right(result.data!);
      }

      return Left(AppError(message: result.message));
    } catch (e) {
      return Left(AppError(message: e.toString()));
    }
  }
}
