import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../common/domain/entities/base_states.dart';
import '../../data/models/todo.dart';
import '../../domain/entities/todo/todo_state.dart';
import '../../domain/repositories/interfaces/todo_repository.dart';

part 'todo_notifier.g.dart';

@riverpod
class TodoNotifier extends _$TodoNotifier {
  final SupabaseClient supabaseClient = Supabase.instance.client;

  @override
  TodoState build() {
    return const TodoStateInitial(initialState: InitialState());
  }

  Future<List<Todo>> loadTodos() async {
    var todo;
    state = const TodoState.loading(loading: LoadingState());

    if (state is TodoStateData) {
      final current = (state as TodoStateData).data;
      state = TodoStateData(data: [...current, todo]);
    }

    final userId = supabaseClient.auth.currentUser!.id;
    final result = await todoRepository.getTodos(userId: userId);

    return result.fold(
      (left) {
        state = TodoStateError(error: ErrorState(message: left.message));
        return [];
      },
      (right) {
        state = TodoStateData(data: right);
        todo = right;
        return right;
      },
    );
  }

  Future<void> addTodo(Todo todo) async {
    // Optimistic update
    if (state is TodoStateData) {
      final current = (state as TodoStateData).data;
      state = TodoStateData(data: [...current, todo]);
    }

    final result = await todoRepository.addTodo(todo: todo);

    result.fold(
      (left) {
        // Rollback if failure
        loadTodos(); // or you could track and revert the previous state

        state = TodoStateError(error: ErrorState(message: left.message));
      },
      (right) {
        if (state is TodoStateData) {
          final current = (state as TodoStateData).data;
          final updated = current
              .map((t) => t.id == right.id ? right : t)
              .toList();
          state = TodoStateData(data: updated);
        } else {
          state = TodoStateData(data: [right]);
        }
      },
    );
  }

  Future<void> deleteTodo(String todoId) async {
    if (state is TodoStateData) {
      final current = (state as TodoStateData).data;
      state = TodoStateData(
        data: current.where((t) => t.id != todoId).toList(),
      );
    }

    final result = await todoRepository.deleteTodo(id: todoId);

    result.fold(
      (left) {
        loadTodos(); // reload if failure
        state = TodoStateError(error: ErrorState(message: left.message));
      },
      (right) {
        // No need to update state, already removed optimistically
      },
    );
  }

  Future<void> updateTodo(Todo todo) async {
    final result = await todoRepository.updateTodo(todo: todo);

    result.fold(
      (left) {
        state = TodoStateError(error: ErrorState(message: left.message));
      },
      (right) {
        if (state is TodoStateData) {
          final current = (state as TodoStateData).data;
          final updated = current
              .map((t) => t.id == right.id ? right : t)
              .toList();
          state = TodoStateData(data: updated);
        } else {
          state = TodoStateData(data: [right]);
        }
      },
    );
  }
}
