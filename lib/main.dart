import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/config/enums.dart';
import 'core/config/router.dart';
import 'core/constants/theme/theme.dart';
import 'core/di/injection_container.dart';

void main() async {
  await initFunction();
  runApp(ProviderScope(child: const MyApp()));
}

final session = Supabase.instance.client.auth.currentSession;
String initialRoute = session != null ? Routes.homeScreen : Routes.signInScreen;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}

Future<void> initFunction() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.setup();
  await dotenv.load();
  await Supabase.initialize(
    url: dotenv.get(ENV_KEYS.SUPABASE_URL.name),
    anonKey: dotenv.get(ENV_KEYS.SUPABASE_KEY.name),
  );
}
