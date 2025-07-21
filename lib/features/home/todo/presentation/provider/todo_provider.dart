import 'package:get_it/get_it.dart';
import 'package:riverpod/riverpod.dart';

import '../../data/models/todo.dart';
import '../../domain/repositories/interfaces/todo_repository.dart';

final todoProvider = StateNotifierProvider<TodoNotifier, List<Todo>>((ref) {
  final notifier = TodoNotifier(GetIt.I<TodoRepository>());
  notifier.loadTodos();
  return notifier;
});

class TodoNotifier extends StateNotifier<List<Todo>> {
  final TodoRepository repo;

  TodoNotifier(this.repo) : super([]);

  Future<void> loadTodos() async {
    final todos = await repo.getTodos();
    state = todos;
  }

  Future<void> addTodo(String title) async {
    final newTodo = Todo(id: DateTime.now().toString(), title: title);
    final updated = [...state, newTodo];
    state = updated;
    await repo.saveTodos(updated);
  }

  Future<void> toggleTodo(String id) async {
    final updated = state
        .map((t) => t.id == id ? t.copyWith(isDone: !t.isDone) : t)
        .toList();
    state = updated;
    await repo.saveTodos(updated);
  }

  Future<void> deleteTodo(String id) async {
    state.removeWhere((t) => t.id == id);
    state = state.toList(); // need to resign to trigger rebuild
    await repo.saveTodos(state);
  }

  Future<void> updateTodo(String id, String newTitle) async {
    final updated = state
        .map((t) => t.id == id ? t.copyWith(title: newTitle) : t)
        .toList();
    state = updated;
    await repo.saveTodos(updated);
  }
}
