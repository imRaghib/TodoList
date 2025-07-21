import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/data/remote/auth_api_service_impl.dart';
import '../../features/auth/domain/repositories/auth_repository_impl.dart';
import '../../features/home/todo/data/local/todo_datasource_impl.dart';
import '../../features/home/todo/domain/repositories/interfaces/todo_repository.dart';
import '../../features/home/todo/domain/repositories/todo_repository_impl.dart';

final serviceLocator = GetIt.instance;

class DependencyInjection {
  static Future<void> setup() async {
    final prefs = await SharedPreferences.getInstance();
    final dataSource = TodoLocalDataSourceImpl(prefs);
    final repo = TodoRepositoryImpl(dataSource);
    GetIt.I.registerSingleton<TodoRepository>(repo);

    serviceLocator.registerLazySingleton<AuthApiServiceImpl>(
      () => AuthApiServiceImpl(),
    );

    serviceLocator.registerLazySingleton<AuthRepositoryImpl>(
      () => AuthRepositoryImpl(
        authApiService: serviceLocator<AuthApiServiceImpl>(),
      ),
    );
  }
}
