import 'package:dartz/dartz.dart';
import 'package:gyj/src/core/errors/app_errors.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repository/auth_repository.dart';
import '../params/login_param.dart';

@lazySingleton
class LoginUseCase extends UseCase<ApiResponse<UserModel>, LoginParam> {
  LoginUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<AppError, ApiResponse<UserModel>>> call(
          LoginParam params) async =>
      _repository.login(
        username: params.username,
        password: params.password,
      );
}
