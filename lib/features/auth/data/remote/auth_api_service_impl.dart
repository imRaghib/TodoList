import 'dart:async';
import 'dart:io';

import 'package:flutter_logger_plus/flutter_logger_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/dio/remote_response.dart';
import '../../domain/entities/signup/signup_request.dart';
import 'interface/auth_api_service.dart';

class AuthApiServiceImpl implements AuthApiService {
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  @override
  Future<RemoteResponse<User?>> attemptToRegister({
    required SignupRequest signupRequest,
  }) async {
    try {
      final AuthResponse response = await _supabaseClient.auth
          .signInWithPassword(
            email: signupRequest.email,
            password: signupRequest.password,
          );

      if (response.user?.id == null) {
        return RemoteResponse.exceptionOccurred('Invalid User');
      }

      // await _supabaseClient
      //     .from(SupabaseTables.profiles.name)
      //     .insert(
      //       UserProfileData(
      //         id: response.user?.id.toString() ?? "",
      //         fullName: signupRequest.fullName,
      //         role: signupRequest.role,
      //         phoneNumber: signupRequest.phoneNumber,
      //         meals: 0,
      //         locale: UserLocale.ar,
      //         shouldEnableNotifications: true,
      //       ).toJson(),
      //     );

      return RemoteResponse.withObject(response.user);
    } catch (e) {
      return handleSupabaseError<User>(e);
    }
  }

  @override
  Future<AuthResponse> signUpWithEmailPassword(
    String email,
    String password,
  ) async {
    return await _supabaseClient.auth.signUp(email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _supabaseClient.auth.signOut();
  }

  @override
  String? getUserEmail() {
    final session = _supabaseClient.auth.currentSession;
    final user = session?.user;
    return user?.email;
  }

  RemoteResponse<T> handleSupabaseError<T>(dynamic exception) {
    if (exception is AuthException) {
      logger.error("Supabase Auth Error: ${exception.message}");
      return RemoteResponse.exceptionOccurred(exception.message);
    } else if (exception is PostgrestException) {
      logger.error("Supabase Database Error: ${exception.message}");
      return RemoteResponse.exceptionOccurred("database_error");
    } else if (exception is StorageException) {
      logger.error("Supabase Storage Error: ${exception.message}");
      return RemoteResponse.exceptionOccurred("storage_error");
    } else if (exception is FunctionException) {
      logger.error("Supabase Function Error: ${exception.reasonPhrase}");
      return RemoteResponse.exceptionOccurred("function_error");
    } else if (exception is SocketException) {
      logger.error("Network Error: No Internet Connection");
      return RemoteResponse.exceptionOccurred("internet_not_available");
    } else if (exception is TimeoutException) {
      logger.error("Network Error: API request timeout");
      return RemoteResponse.exceptionOccurred("request_timeout");
    } else {
      logger.error("Unexpected Error: $exception");
      return RemoteResponse.exceptionOccurred("Something went wrong.");
    }
  }

  @override
  Future<AuthResponse> signInWithEmailPassword(String email, String password) {
    // TODO: implement signInWithEmailPassword
    throw UnimplementedError();
  }
}
