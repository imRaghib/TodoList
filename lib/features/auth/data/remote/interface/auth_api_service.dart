import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthApiService {
  Future<AuthResponse> signInWithEmailPassword(String email, String password);

  Future<AuthResponse> signUpWithEmailPassword(String email, String password);

  Future<void> signOut();

  String? getUserEmail();

  // User? getCurrentUser();
}
