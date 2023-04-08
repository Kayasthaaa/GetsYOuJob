import 'package:dartz/dartz.dart';

import '../../../../../../core/api_response/api_response.dart';
import '../../../../../../core/errors/app_errors.dart';

abstract class BasicInformationPost {
  Future<Either<AppError, ApiResponse>> postBasicInformation({
    String? firstName,
    String? middleName,
    String? lastName,
    String? email,
    String? mobile,
    String? address,
    String? sex,
  });
}
