import 'dart:async';
import 'dart:io';

import 'package:flutter_logger_plus/flutter_logger_plus.dart';
import 'package:supabase_demo/features/auth/domain/entities/signin/signin_request.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/config/enums.dart';
import '../../../../core/dio/remote_response.dart';
import '../../../common/data/enums/supabase_params.dart';
import '../../../common/data/enums/supabase_tables.dart';
import '../../domain/entities/signup/signup_request.dart';
import '../models/auth/user_profile_data.dart';
import 'interface/auth_api_service.dart';

class AuthApiServiceImpl implements AuthApiService {
  final SupabaseClient _supabaseClient = Supabase.instance.client;

  @override
  Future<RemoteResponse<User?>> attemptToRegister({
    required SignupRequest signupRequest,
    required File profileImage,
  }) async {
    try {
      final AuthResponse response = await _supabaseClient.auth.signUp(
        email: signupRequest.email,
        password: signupRequest.password,
      );

      if (response.user?.id == null) {
        return RemoteResponse.exceptionOccurred(
          LocalizationKeys.auth_failed_invalid_response.name,
        );
      }

      final storagePath = 'avatars/${response.user!.id}.png';
      await _supabaseClient.storage
          .from(SupabaseTables.images.name)
          .uploadBinary(
            storagePath,
            await profileImage.readAsBytes(),
            fileOptions: const FileOptions(contentType: 'image/png'),
          );
      String profileImageUrl = _supabaseClient.storage
          .from(SupabaseTables.images.name)
          .getPublicUrl(storagePath);

      await _supabaseClient
          .from(SupabaseTables.profiles.name)
          .insert(
            UserProfileData(
              id: response.user?.id.toString() ?? "",
              email: response.user?.email.toString() ?? "",
              avatar_url: profileImageUrl,
            ).toJson(),
          );
      return RemoteResponse.withObject(response.user);
    } catch (e) {
      return handleSupabaseError<User>(e);
    }
  }

  @override
  Future<RemoteResponse<User?>> attemptToSignIn({
    required SigninRequest signinRequest,
  }) async {
    try {
      final AuthResponse response = await _supabaseClient.auth
          .signInWithPassword(
            email: signinRequest.email,
            password: signinRequest.password ?? "",
          );

      if (response.user == null) {
        return RemoteResponse.exceptionOccurred(
          LocalizationKeys.auth_failed_invalid_response.name,
        );
      }

      return RemoteResponse.withObject(response.user);
    } catch (e) {
      return handleSupabaseError<User>(e);
    }
  }

  @override
  Future<RemoteResponse<bool>> logoutUserFromServer() async {
    RemoteResponse<bool> remoteResponse;
    try {
      await _supabaseClient.auth.signOut();

      return RemoteResponse.withObject(true);
    } catch (e) {
      remoteResponse = RemoteResponse.exceptionOccurred(e.toString());

      logger.error(e);
    }

    return remoteResponse;
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
  Future<RemoteResponse<UserProfileData?>> getProfileData() async {
    try {
      final userId = _supabaseClient.auth.currentUser?.id;
      if (userId == null) {
        return RemoteResponse.exceptionOccurred(
          LocalizationKeys.user_not_logged_in.name,
        );
      }
      //fetches id from session, sends a request to get user data

      final response = await _supabaseClient
          .from(SupabaseTables.profiles.name)
          .select()
          .eq(SupabaseParams.id.name, userId)
          .maybeSingle();

      return RemoteResponse.withObject(
        UserProfileData.fromJson(response ?? {}),
      );
    } catch (e) {
      logger.error(e);
      return RemoteResponse.exceptionOccurred(
        LocalizationKeys.something_went_wrong.name,
      );
    }
  }
}
