import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/home/data/local/todo_datasource_impl.dart';
import '../../features/home/domain/repositories/interfaces/todo_repository.dart';
import '../../features/home/domain/repositories/todo_repository_impl.dart';

class DependencyInjection {
  static Future<void> setup() async {
    WidgetsFlutterBinding.ensureInitialized();
    final prefs = await SharedPreferences.getInstance();
    final dataSource = TodoLocalDataSourceImpl(prefs);
    final repo = TodoRepositoryImpl(dataSource);
    GetIt.I.registerSingleton<TodoRepository>(repo);
  }
}
