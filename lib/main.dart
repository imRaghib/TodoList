import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/config/router.dart';

const String databaseUrl = 'https://kjswewwaunxtclvgwtnz.supabase.co';
const String databaseAPIKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imtqc3dld3dhdW54dGNsdmd3dG56Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTI3MjgyMTgsImV4cCI6MjA2ODMwNDIxOH0.NL572TkRx7525gmae9mWuRMysLC5Y5ej_W7foRA6NOA';

void main() async {
  await Supabase.initialize(url: databaseUrl, anonKey: databaseAPIKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
