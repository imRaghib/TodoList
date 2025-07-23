import 'package:supabase_demo/core/dio/remote_response.dart';
import 'package:supabase_demo/features/common/data/enums/supabase_params.dart';
import 'package:supabase_demo/features/home/todo/data/models/todo.dart';
import 'package:supabase_demo/features/home/todo/data/remote/interface/todo_api_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../common/data/enums/supabase_tables.dart';

class TodoApiServiceImpl implements TodoApiService {
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  @override
  Future<RemoteResponse<List<Todo>>> getTodos(String userId) async {
    try {
      final response = await _supabaseClient
          .from(SupabaseTables.todos.name)
          .select()
          .eq(SupabaseParams.user_id.name, userId)
          .order(SupabaseParams.created_at.name, ascending: false);

      final todoList = response.map((e) => Todo.fromJson(e)).toList();

      return RemoteResponse.withObject(todoList);
    } catch (e) {
      return RemoteResponse.exceptionOccurred(e.toString());
    }
  }

  @override
  Future<RemoteResponse<Todo>> addTodo(Todo todo) async {
    try {
      final response = await _supabaseClient
          .from(SupabaseTables.todos.name)
          .insert(todo.toJson())
          .select()
          .single();

      return RemoteResponse.withObject(Todo.fromJson(response));
    } catch (e) {
      return RemoteResponse.exceptionOccurred(e.toString());
    }
  }

  @override
  Future<RemoteResponse<Todo>> updateTodo(Todo todo) async {
    try {
      final response = await _supabaseClient
          .from(SupabaseTables.todos.name)
          .update(todo.toJson())
          .eq(SupabaseParams.id.name, todo.id!)
          .select()
          .single();

      return RemoteResponse.withObject(Todo.fromJson(response));
    } catch (e) {
      return RemoteResponse.exceptionOccurred(e.toString());
    }
  }

  @override
  Future<RemoteResponse<bool>> deleteTodo(String todoId) async {
    try {
      await _supabaseClient
          .from(SupabaseTables.todos.name)
          .delete()
          .eq(SupabaseParams.id.name, todoId);

      return RemoteResponse.withObject(true);
    } catch (e) {
      return RemoteResponse.exceptionOccurred(e.toString());
    }
  }
}
