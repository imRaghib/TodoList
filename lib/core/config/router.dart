import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_demo/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:supabase_demo/features/home/todo/presentation/pages/add_todo_screen.dart';

import '../../features/auth/presentation/pages/sign_in_screen.dart';
import '../../features/home/todo/presentation/pages/home_screen.dart';
import '../../main.dart';

class Routes {
  static const homeScreen = '/home_screen';
  static const signUpScreen = '/sign_up_screen';
  static const signInScreen = '/sign_in_screen';
  static const addTodoScreen = '/add_todo_screen';
}

final router = GoRouter(
  initialLocation: initialRoute,
  routes: [
    GoRoute(
      name: Routes.homeScreen,
      path: Routes.homeScreen,
      pageBuilder: (context, state) {
        return MaterialPage(child: HomeScreen());
      },
    ),
    GoRoute(
      name: Routes.signUpScreen,
      path: Routes.signUpScreen,
      pageBuilder: (context, state) {
        return MaterialPage(child: SignUpScreen());
      },
    ),
    GoRoute(
      name: Routes.signInScreen,
      path: Routes.signInScreen,
      pageBuilder: (context, state) {
        return MaterialPage(child: SignInScreen());
      },
    ),
    GoRoute(
      name: Routes.addTodoScreen,
      path: Routes.addTodoScreen,
      pageBuilder: (context, state) {
        return MaterialPage(child: AddTodoScreen());
      },
    ),
  ],
);
