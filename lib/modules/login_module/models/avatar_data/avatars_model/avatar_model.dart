// To parse this JSON data, do
//
//     final avatarsModel = avatarsModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_model.freezed.dart';
part 'avatar_model.g.dart';

@freezed
class AvatarsModel with _$AvatarsModel {
  const factory AvatarsModel({
    List<Result>? result,
  }) = _AvatarsModel;

  factory AvatarsModel.fromJson(Map<String, dynamic> json) =>
      _$AvatarsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    int? id,
    String? name,
    String? image,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
