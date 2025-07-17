import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/config/router.dart';
import 'core/constants/theme/theme.dart';
import 'core/di/injection_container.dart';

void main() async {
  await DependencyInjection.setup();
  runApp(ProviderScope(child: MyApp()));
}

String initialRoute = Routes.homeScreen;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.dark,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
