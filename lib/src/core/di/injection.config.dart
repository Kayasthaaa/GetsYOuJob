// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:gyj/src/app/cubit/app_cubit.dart' as _i10;
import 'package:gyj/src/core/di/register_modules.dart' as _i18;
import 'package:gyj/src/core/helpers/storage_helper.dart' as _i9;
import 'package:gyj/src/core/network/network_info.dart' as _i8;
import 'package:gyj/src/core/routes/app_router.dart' as _i3;
import 'package:gyj/src/feature/authentications/data/repository/auth_repository_impl.dart'
    as _i13;
import 'package:gyj/src/feature/authentications/data/source/auth_remote_source.dart'
    as _i11;
import 'package:gyj/src/feature/authentications/domain/entitites/usecase/login_usecase.dart'
    as _i14;
import 'package:gyj/src/feature/authentications/domain/entitites/usecase/register_usecase.dart'
    as _i15;
import 'package:gyj/src/feature/authentications/domain/repository/auth_repository.dart'
    as _i12;
import 'package:gyj/src/feature/authentications/presentations/cubit/login/login_cubit.dart'
    as _i16;
import 'package:gyj/src/feature/authentications/presentations/cubit/register/register_cubit.dart'
    as _i17;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:logger/logger.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppRouter>(() => registerModule.router);
    gh.lazySingleton<_i4.Dio>(
      () => registerModule.authenticatedDio,
      instanceName: 'authenticated',
    );
    gh.lazySingleton<_i4.Dio>(
      () => registerModule.unauthenticatedDio,
      instanceName: 'un-authenticated',
    );
    gh.lazySingleton<_i5.FlutterSecureStorage>(() => registerModule.storage);
    gh.lazySingleton<_i6.InternetConnectionChecker>(
        () => registerModule.checker);
    gh.lazySingleton<_i7.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i8.NetworkInfo>(
        () => _i8.NetworkInfoImpl(gh<_i6.InternetConnectionChecker>()));
    gh.lazySingleton<_i9.StorageHelper>(() => registerModule.storageHelper);
    gh.factory<_i10.AppCubit>(() => _i10.AppCubit(gh<_i9.StorageHelper>()));
    gh.lazySingleton<_i11.AuthRemoteSource>(() => _i11.AuthRemoteSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i12.AuthRepository>(() => _i13.AuthRepositoryImpl(
          gh<_i11.AuthRemoteSource>(),
          gh<_i8.NetworkInfo>(),
          gh<_i9.StorageHelper>(),
        ));
    gh.lazySingleton<_i14.LoginUseCase>(
        () => _i14.LoginUseCase(gh<_i12.AuthRepository>()));
    gh.lazySingleton<_i15.RegisterUseCase>(
        () => _i15.RegisterUseCase(gh<_i12.AuthRepository>()));
    gh.factory<_i16.LoginCubit>(() => _i16.LoginCubit(gh<_i14.LoginUseCase>()));
    gh.factory<_i17.RegisterCubit>(
        () => _i17.RegisterCubit(gh<_i15.RegisterUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i18.RegisterModule {}
