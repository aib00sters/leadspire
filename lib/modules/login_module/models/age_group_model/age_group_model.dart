import 'package:freezed_annotation/freezed_annotation.dart';

part 'age_group_model.freezed.dart';
part 'age_group_model.g.dart';

@freezed
class AgeGroupModel with _$AgeGroupModel {
  const factory AgeGroupModel({
    required String imageUrl,
    required String groupName,
    required String groupId,
    required String groupRange,
    required String fimageurl,
  }) = _AgeGroupModel;

  factory AgeGroupModel.fromJson(Map<String, dynamic> json) =>
      _$AgeGroupModelFromJson(json);
}
