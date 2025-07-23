import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:supabase_demo/core/dio/results.dart';
import 'package:supabase_demo/features/auth/domain/entities/signin/signin_request.dart';
import 'package:supabase_demo/features/auth/domain/entities/signup/signup_request.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/config/enums.dart';
import '../../../../core/utils/network/network.dart';
import '../../data/models/auth/user_profile_data.dart';
import '../../data/remote/interface/auth_api_service.dart';
import 'interface/auth_respository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService authApiService;

  AuthRepositoryImpl({required this.authApiService});

  @override
  Future<Either<AppError, User?>> attemptToRegister({
    required SignupRequest signupRequest,
    required File profileImage,
  }) async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.internet_not_available.name),
      );
    }
    try {
      final result = await authApiService.attemptToRegister(
        signupRequest: signupRequest,
        profileImage: profileImage,
      );
      if (result.data != null) {
        return Right(result.data);
      }

      return Left(AppError(message: result.message));
    } catch (e) {
      return Left(AppError(message: e.toString()));
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

  @override
  Future<Either<AppError, UserProfileData?>> getUserById() async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.internet_not_available.name),
      );
    }
    try {
      final result = await authApiService.getProfileData(); // returns user data
      if (result.data != null) {
        return Right(result.data);
      } else {
        return Left(AppError(message: result.message));
      }
    } catch (e) {
      return Left(AppError(message: e.toString()));
    }
  }

  @override
  Future<Either<AppError, bool>> updateProfileData({
    required File profileImage,
  }) async {
    if (!await isNetworkAvailable) {
      return Left(
        AppError(message: LocalizationKeys.internet_not_available.name),
      );
    }

    try {
      final result = await authApiService.updateProfileData(
        profileImage: profileImage,
      );

      if (result.data != null) {
        return Right(true);
      } else {
        return Left(
          AppError(message: LocalizationKeys.auth_failed_invalid_response.name),
        );
      }
    } catch (e) {
      return Left(AppError(message: e.toString()));
    }
  }
}
