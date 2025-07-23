import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/todo.dart';
import 'interface/todo_datasource.dart';

class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  static const key = 'todos';
  final SharedPreferences prefs;

  TodoLocalDataSourceImpl(this.prefs);

  @override
  Future<List<Todo>> getTodos() async {
    final jsonString = prefs.getString(key);
    if (jsonString != null) {
      final List list = json.decode(jsonString);
      return list.map((e) => Todo.fromJson(e)).toList();
    }
    return [];
  }

  @override
  Future<void> saveTodos(List<Todo> todos) async {
    final jsonString = json.encode(todos.map((e) => e.toJson()).toList());
    await prefs.setString(key, jsonString);
  }
}
