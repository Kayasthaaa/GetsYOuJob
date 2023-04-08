import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_models.freezed.dart';
part 'app_models.g.dart';

@freezed
class AppModels with _$AppModels {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AppModels({
    String? firstName,
    String? middleName,
    String? lastName,
    String? password,
    String? about,
    String? jobTitle,
    String? lookingFor,
    String? maritialStatus,
    String? sex,
    String? dob,
    String? nationality,
    String? street,
    String? district,
    String? zone,
    String? province,
    String? country,
    String? address,
    String? mobile,
    String? telephone,
    String? facebook,
    String? twitter,
    String? linkedin,
    String? github,
    String? website,
    int? experience,
  }) = _AppModels;

  factory AppModels.fromJson(Map<String, dynamic> json) =>
      _$AppModelsFromJson(json);
}
