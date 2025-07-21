import 'package:fpdart/fpdart.dart';
import 'package:supabase_demo/core/dio/results.dart';
import 'package:supabase_demo/features/auth/domain/entities/signin/signin_request.dart';
import 'package:supabase_demo/features/auth/domain/entities/signup/signup_request.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/config/enums.dart';
import '../../../../core/utils/network/network.dart';
import '../../data/remote/interface/auth_api_service.dart';
import 'interface/auth_respository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService authApiService;

  AuthRepositoryImpl({required this.authApiService});

  @override
  Future<Either<AppError, User?>> attemptToRegister({
    required SignupRequest signupRequest,
  }) async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.internet_not_available.name),
      );
    }
    try {
      final result = await authApiService.attemptToRegister(
        signupRequest: signupRequest,
      );
      if (result.data != null) {
        return Right(result.data);
      }

      return Left(AppError(message: result.message));
    } catch (ex) {
      return Left(AppError(message: ex.toString()));
    }
  }

  @override
  Future<Either<AppError, User?>> attemptToSignIn({
    required SigninRequest signinRequest,
  }) async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.auth_failed_invalid_response.name),
      );
    }
    try {
      final result = await authApiService.attemptToSignIn(
        signinRequest: signinRequest,
      );

      if (result.data != null) {
        // await authLocalDatasource.saveSession(result.data!);
        return Right(result.data);
      }

      return Left(AppError(message: result.message));
    } catch (ex) {
      return Left(AppError(message: ex.toString()));
    }
  }

  @override
  Future<bool> logoutUser() async {
    final _ = await authApiService.logoutUserFromServer();
    await Future.delayed(const Duration(milliseconds: 500));
    return Future.value(true);
  }
}
