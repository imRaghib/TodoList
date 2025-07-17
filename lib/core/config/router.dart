import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_demo/features/auth/presentation/pages/sign_up_screen.dart';
import '../../features/home/user/presentation/pages/home_screen.dart';

class Routes {
  static const homeScreen = '/home_screen';
  static const signUpScreen = '/sign_up_screen';
}

final router = GoRouter(
  initialLocation: Routes.signUpScreen,
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
  ],
);
