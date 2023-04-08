import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/src/adapters/io_adapter.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:gyj/src/core/helpers/storage_helper.dart';

import 'package:gyj/src/core/routes/app_router.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
            methodCount: 2,
            // number of method calls to be displayed
            errorMethodCount: 8,
            // number of method calls if stacktrace is provided
            lineLength: 200,
            // width of the output
            colors: true,
            // Colorful log messages
            printEmojis: true,
            // Print an emoji for each log message
            printTime: true // Should each log print contain a timestamp
            ),
      );

  @lazySingleton
  InternetConnectionChecker get checker => InternetConnectionChecker();

  @lazySingleton
  FlutterSecureStorage get storage => const FlutterSecureStorage(
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
        aOptions: AndroidOptions(encryptedSharedPreferences: true),
      );

  @lazySingleton
  AppRouter get router => AppRouter();

  @lazySingleton
  StorageHelper get storageHelper => StorageHelper(storage);

  @Named('authenticated')
  @lazySingleton
  Dio get authenticatedDio => Dio(
        BaseOptions(
          baseUrl: 'https://api.getsyoujob.com/',
          receiveTimeout: 60000,
          connectTimeout: 60000,
          responseType: ResponseType.json,
          headers: <String, dynamic>{
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      )
        ..interceptors.addAll([
          HttpFormatter(),
          LogInterceptor(),
          QueuedInterceptorsWrapper(
            onRequest: (options, handler) async {
              final tokenOption = await storageHelper.getToken();
              final token = tokenOption.fold(() => '', (a) => a);

              try {
                logger.i('bearer token is ' + token);
                options.headers.addAll(<String, dynamic>{
                  'Authorization': 'Bearer $token',
                });
                handler.next(options);
              } on DioError catch (e) {
                handler.reject(e);
              }
            },
            onError: (error, handler) async {
              if (error.response?.statusCode == 401) {
                var options = error.response!.requestOptions;
                if (error.response?.data['message'] == 'Unauthenticated.') {
                  logger.d('here');
                  final accessToken = await _refreshToken();
                  if (accessToken == 'Unauthenticated') {
                    handler.reject(error);
                    return;
                  } else {
                    logger.i('bearer token is ' + accessToken);
                    options.headers.addAll(
                      {
                        'Authorization': 'Bearer $accessToken',
                      },
                    );
                    authenticatedDio.fetch(options).then(
                      (r) => handler.resolve(r),
                      onError: (e) {
                        return handler.reject(e);
                      },
                    );
                  }

                  return;
                } else {
                  try {
                    final hasAccessToken = await storageHelper.hasAccessToken;
                    final isTokenExpired = await storageHelper.isTokenExpired;
                    if (hasAccessToken && isTokenExpired) {
                      final accessToken = await _refreshToken();
                      options.headers.addAll(
                        {
                          'Authorization': 'Bearer $accessToken',
                        },
                      );
                      authenticatedDio.fetch(options).then(
                        (r) => handler.resolve(r),
                        onError: (e) {
                          return handler.next(e);
                        },
                      );
                      return;
                    }
                    return handler.next(error);
                  } on DioError catch (e) {
                    return handler.next(e);
                  }
                }
              } else {
                return handler.next(error);
              }
            },
          ),
        ])
        ..httpClientAdapter = CustomHttpClientAdapter();

  @Named('un-authenticated')
  @lazySingleton
  Dio get unauthenticatedDio => Dio(
        BaseOptions(
          baseUrl: 'https://api.getsyoujob.com/',
          receiveTimeout: 60000,
          connectTimeout: 60000,
          responseType: ResponseType.json,
          headers: <String, dynamic>{
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      )
        ..interceptors.addAll(
          [
            HttpFormatter(),
            LogInterceptor(),
            QueuedInterceptorsWrapper(
              onRequest: (options, handler) async {
                handler.next(options);
              },
            ),
          ],
        )
        ..httpClientAdapter = CustomHttpClientAdapter();

  Future<String> _refreshToken() async {
    final tokenDio = Dio()..options = unauthenticatedDio.options;
    try {
      final response = await tokenDio.post('/refresh-token');
      if (response.statusCode == 201) {
        final data = response.data['data'];
        await storageHelper.updateSession(
          accessToken: data['access_token'],
          refreshToken: data['refresh_token'],
          expiryTime: data['expires_in'],
        );
        return data['access_token'];
      } else {
        await storageHelper.clearAll();
        router.replaceAll([const LoginRoute()]);
        return 'Unauthenticated';
        // throw AppException.fromDioError(DioError(requestOptions: response.requestOptions));
      }
    } on DioError catch (_) {
      await storageHelper.clearAll();
      router.replaceAll([const LoginRoute()]);
      return 'Unauthenticated';
      // throw AppException.fromDioError(e);
    }
  }
}

class CustomHttpClientAdapter extends DefaultHttpClientAdapter {
  @override
  OnHttpClientCreate? onHttpClientCreate = (client) {
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  };
}
