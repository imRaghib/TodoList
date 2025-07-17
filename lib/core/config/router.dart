import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/user/presentation/pages/home_screen.dart';

class Routes {
  static const homeScreen = '/home_screen';
}

final router = GoRouter(
  initialLocation: Routes.homeScreen,
  routes: [
    GoRoute(
      name: Routes.homeScreen,
      path: Routes.homeScreen,
      pageBuilder: (context, state) {
        return MaterialPage(child: HomeScreen());
      },
    ),
  ],
);
