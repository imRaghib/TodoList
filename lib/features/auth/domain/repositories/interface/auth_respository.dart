import 'package:fpdart/fpdart.dart';
import 'package:supabase_demo/core/dio/results.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../core/di/injection_container.dart';
import '../../entities/signin/signin_request.dart';
import '../../entities/signup/signup_request.dart';
import '../auth_repository_impl.dart';

final AuthRepository authRepository = serviceLocator.get<AuthRepositoryImpl>();

abstract class AuthRepository {
  Future<Either<AppError, User?>> attemptToRegister({
    required SignupRequest signupRequest,
  });

  Future<Either<AppError, User?>> attemptToSignIn({
    required SigninRequest signinRequest,
  });

  Future<bool> logoutUser();
}
