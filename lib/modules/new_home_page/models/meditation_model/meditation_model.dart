import 'package:freezed_annotation/freezed_annotation.dart';

part 'meditation_model.freezed.dart';
part 'meditation_model.g.dart';

@freezed
class Activity with _$Activity {
  const factory Activity({
    required String activityName,
    required String activityId,
    required String subTitle,
    required String activityImage,
    required String songUrl,
    required String type,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required String categoryName,
    required String categoryId,
    required List<Activity> activities,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class MeditationListModel with _$MeditationListModel {
  const factory MeditationListModel({
    required Result result,
  }) = _MeditationListModel;

  factory MeditationListModel.fromJson(Map<String, dynamic> json) =>
      _$MeditationListModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<Category> categories,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
