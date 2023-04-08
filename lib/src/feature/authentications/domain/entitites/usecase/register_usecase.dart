import 'package:dartz/dartz.dart';
import 'package:gyj/src/feature/authentications/domain/entitites/params/register_param.dart';

import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_errors.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/models/user_model.dart';
import '../../repository/auth_repository.dart';

@lazySingleton
class RegisterUseCase extends UseCase<ApiResponse<UserModel>, RegisterParams> {
  RegisterUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<AppError, ApiResponse<UserModel>>> call(
          RegisterParams params) async =>
      _repository.register(
          email: params.email,
          username: params.username,
          password: params.password,
          role: params.role);
}
