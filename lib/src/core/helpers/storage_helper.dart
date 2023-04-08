import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../feature/authentications/data/models/user_model.dart';
import '../constants/app_constants.dart';

class StorageHelper {
  const StorageHelper(this._storage);

  final FlutterSecureStorage _storage;

  FutureOr<bool> get hasAccessToken async {
    final token = await _storage.read(key: AppConstants.accessToken);
    return token != null && token.isNotEmpty;
  }

  FutureOr<bool> get isTokenExpired async {
    final expiryTime = await _storage.read(key: AppConstants.expiryTime);
    if (expiryTime == null || expiryTime.isEmpty) return true;
    final expiryDate = DateTime.parse(expiryTime);
    final currentDate = DateTime.now();
    return currentDate.isAfter(expiryDate);
  }

  FutureOr<Option<String>> getToken() async {
    final token = await _storage.read(key: AppConstants.accessToken);
    return optionOf(token);
  }

  FutureOr<Option<String>> getRefreshToken() async {
    final refreshToken = await _storage.read(key: AppConstants.refreshToken);
    return optionOf(refreshToken);
  }

  Future<void> saveSessionToken(String value) async =>
      await _storage.write(key: AppConstants.sessionToken, value: value);

  Future<String?> getValue({required String key}) async =>
      _storage.read(key: key);

  Future<void> setValue({required String key, required String value}) async =>
      _storage.write(key: key, value: value);

  Future<void> deleteValue({required String key}) async =>
      _storage.delete(key: key);

  Future<void> clearAll() async => _storage.deleteAll();

  Future<Map<String, String>> getAllValues() async => _storage.readAll();

  Future<void> setSession({required UserModel model}) async =>
      await Future.wait([
        _storage.write(
            key: AppConstants.accessToken, value: model.data!.access_token!),
      ]);

  Future<void> updateSession({
    required String accessToken,
    required String refreshToken,
    required String expiryTime,
  }) async =>
      await Future.wait([
        _storage.write(key: AppConstants.accessToken, value: accessToken),
        _storage.write(key: AppConstants.refreshToken, value: refreshToken),
        _storage.write(key: AppConstants.expiryTime, value: expiryTime),
      ]);
}
