import 'package:dartz/dartz.dart';

import '../errors/app_errors.dart';

abstract class UseCase<Type, Param> {
  Future<Either<AppError, Type>> call(Param params);
}

class NoParam {
  const NoParam();
}
