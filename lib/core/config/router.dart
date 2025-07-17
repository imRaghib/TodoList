import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/features/home/presentation/pages/add_todo_screen.dart';
import 'package:todolist/features/home/presentation/pages/home_screen.dart';

import '../../main.dart';

class Routes {
  static const String homeScreen = '/home_screen';
  static const String addTodoScreen = '/dashboard_screen';
}

// GoRouter configuration
final router = GoRouter(
  initialLocation: initialRoute,

  routes: [
    GoRoute(
      name: Routes.homeScreen,
      // Optional, add name to your routes. Allows you navigate by name instead of path
      path: Routes.homeScreen,
      pageBuilder: (context, state) {
        return MaterialPage(child: HomeScreen());
      },
    ),
    GoRoute(
      name: Routes.addTodoScreen,
      // Optional, add name to your routes. Allows you navigate by name instead of path
      path: Routes.addTodoScreen,
      pageBuilder: (context, state) {
        return MaterialPage(child: AddTodoScreen());
      },
    ),
  ],
);
