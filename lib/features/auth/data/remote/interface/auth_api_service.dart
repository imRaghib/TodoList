import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/di/injection_container.dart';
import '../../../../../core/dio/remote_response.dart';
import '../../../domain/entities/signin/signin_request.dart';
import '../../../domain/entities/signup/signup_request.dart';
import '../../models/auth/user_profile_data.dart';
import '../auth_api_service_impl.dart';

final AuthApiService authApiService = serviceLocator.get<AuthApiServiceImpl>();

abstract class AuthApiService {
  Future<RemoteResponse<User?>> attemptToRegister({
    required SignupRequest signupRequest,
    required File profileImage,
  });

  Future<RemoteResponse<User?>> attemptToSignIn({
    required SigninRequest signinRequest,
  });

  Future<RemoteResponse<bool>> logoutUserFromServer();

  Future<RemoteResponse<UserProfileData?>> getProfileData();

  Future<RemoteResponse<bool>> updateUserPassword();

  Future<RemoteResponse<bool>> updateProfileData({required File profileImage});
}
