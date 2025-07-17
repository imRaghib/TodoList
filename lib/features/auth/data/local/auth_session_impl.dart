// import 'package:gotrue/src/types/auth_state.dart';
// import 'package:supabase_demo/features/auth/data/local/interface/auth_session.dart';
// import 'package:supabase_flutter/supabase_flutter.dart';
//
// class AuthLocalDataSource {
//   final SupabaseClient _supabaseClient;
//
//   AuthLocalDataSource(this._supabaseClient);
//
//   User? getCurrentUser() {
//     return _supabaseClient.auth.currentUser;
//   }
//
//   Stream<AuthState> authStateChanges() {
//     return _supabaseClient.auth.onAuthStateChange.map((event) {
//       return AuthState(
//         isAuthenticated: event.session != null,
//         user: event.session?.user,
//       );
//     });
//   }
// }
