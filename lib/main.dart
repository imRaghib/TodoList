import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/config/enums.dart';
import 'core/config/router.dart';
import 'core/di/dependcy_injection.dart';

void main() async {
  await DependencyInjection.setup();
  await Supabase.initialize(
    url: dotenv.get(ENV_KEYS.SUPABASE_URL.name),
    anonKey: dotenv.get(ENV_KEYS.SUPABASE_KEY.name),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
