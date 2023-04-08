import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_errors.dart';
import '../../../../core/errors/app_exception.dart';
import '../../../../core/helpers/storage_helper.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/auth_repository.dart';
import '../models/user_model.dart';
import '../source/auth_remote_source.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(
      this._authRemoteSource, this._networkInfo, this._helper);

  final AuthRemoteSource _authRemoteSource;
  final NetworkInfo _networkInfo;
  final StorageHelper _helper;

  @override
  Future<Either<AppError, ApiResponse<UserModel>>> login({
    required String username,
    required String password,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _authRemoteSource.login(
          username: username,
          password: password,
        );
        await _helper.setSession(model: response.data);
        return right(ApiResponse(
          data: response.data,
          message: response.message,
          errors: response.errors,
        ));
      } on AppException catch (e) {
        return left(AppError.serverError(message: e.message));
      }
    } else {
      return left(const AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse<UserModel>>> register({
    required String email,
    required String username,
    required String role,
    required String password,
  }) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _authRemoteSource.register(
          email: email,
          username: username,
          password: password,
          role: role,
        );
        await _helper.setSession(model: response.data);
        return right(ApiResponse(
            data: response.data,
            message: response.message,
            errors: response.errors));
      } on AppException catch (e) {
        if (e.statusCode == 422 && e.errors != null) {
          return left(AppError.serverError(message: e.message));
        } else {
          return left(AppError.serverError(message: e.message));
        }
      }
    } else {
      return left(const AppError.noInternet());
    }
  }
}
