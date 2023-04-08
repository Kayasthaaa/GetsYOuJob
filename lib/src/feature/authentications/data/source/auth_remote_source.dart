// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exception.dart';
import '../models/user_model.dart';

abstract class AuthRemoteSource {
  Future<ApiResponse<UserModel>> login({
    required String username,
    required String password,
  });

  Future<ApiResponse<UserModel>> register({
    required String email,
    required String username,
    required String role,
    required String password,
  });
}

@LazySingleton(as: AuthRemoteSource)
class AuthRemoteSourceImpl implements AuthRemoteSource {
  const AuthRemoteSourceImpl(@Named('un-authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;

  final Logger _logger;

  @override
  Future<ApiResponse<UserModel>> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _dio.post('auth/login', data: {
        'username': username,
        'password': password,
      });
      if (response.statusCode == 201) {
        return ApiResponse(
          data: UserModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<UserModel>> register({
    required String email,
    required String username,
    required String role,
    required String password,
  }) async {
    try {
      final response = await _dio.post('auth/register', data: {
        'email': email,
        'username': username,
        'role': role,
        'password': password,
      });
      if (response.statusCode == 201 || response.statusCode == 200) {
        return ApiResponse(
          data: UserModel.fromJson(response.data),
          message: response.data['message'],
        );
      } else {
        throw AppException(message: response.data['message']);
      }
    } on DioError catch (e) {
      throw AppException(message: e.message);
    }
  }
}
