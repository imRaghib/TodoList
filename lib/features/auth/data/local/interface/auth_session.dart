import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthSession {
  Stream<AuthState> authStateChanges();
}
