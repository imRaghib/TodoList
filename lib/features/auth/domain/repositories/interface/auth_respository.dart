import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:supabase_demo/core/dio/results.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/di/injection_container.dart';
import '../../../data/models/auth/user_profile_data.dart';
import '../../entities/signin/signin_request.dart';
import '../../entities/signup/signup_request.dart';
import '../auth_repository_impl.dart';

final AuthRepository authRepository = serviceLocator.get<AuthRepositoryImpl>();

abstract class AuthRepository {
  Future<Either<AppError, User?>> attemptToRegister({
    required SignupRequest signupRequest,
    required File profileImage,
  });

  Future<Either<AppError, User?>> attemptToSignIn({
    required SigninRequest signinRequest,
  });

  Future<bool> logoutUser();

  Future<Either<AppError, UserProfileData?>> getUserById();
}
