// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      data: json['data'] == null
          ? null
          : TokenModel.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['status_code'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
      'status_code': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };

_$_TokenModel _$$_TokenModelFromJson(Map<String, dynamic> json) =>
    _$_TokenModel(
      access_token: json['access_token'] as String?,
    );

Map<String, dynamic> _$$_TokenModelToJson(_$_TokenModel instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
    };
