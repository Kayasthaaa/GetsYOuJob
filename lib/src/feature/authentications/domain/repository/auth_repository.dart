import 'package:dartz/dartz.dart';
import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_errors.dart';
import '../../data/models/user_model.dart';

//?  ---> this reposidoty class contains Abstract classes that define the expected functionality of outer layers

abstract class AuthRepository {
  Future<Either<AppError, ApiResponse<UserModel>>> login({
    required String username,
    required String password,
  });

  Future<Either<AppError, ApiResponse<UserModel>>> register({
    required String email,
    required String username,
    required String password,
    required String role,
  });
}
