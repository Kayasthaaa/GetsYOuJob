import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserModel({
    TokenModel? data,
    int? statusCode,
    String? message,
    String? error,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class TokenModel with _$TokenModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TokenModel({
    String? access_token,
  }) = _TokenModel;

  factory TokenModel.fromJson(Map<String, dynamic> json) =>
      _$TokenModelFromJson(json);
}
