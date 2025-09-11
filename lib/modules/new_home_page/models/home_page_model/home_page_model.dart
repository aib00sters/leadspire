import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_page_model.freezed.dart';
part 'home_page_model.g.dart';

@freezed
class Category with _$Category {
  const factory Category({
    required String catId,
    required String catName,
    required String imageUrl,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class HomeData with _$HomeData {
  const factory HomeData({
    required List<Recent> recent,
    required List<Category> categories,
  }) = _HomeData;

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
}

@freezed
class HomePageModel with _$HomePageModel {
  const factory HomePageModel({
    required HomeData homeData,
  }) = _HomePageModel;

  factory HomePageModel.fromJson(Map<String, dynamic> json) =>
      _$HomePageModelFromJson(json);
}

@freezed
class Recent with _$Recent {
  const factory Recent(
      {required String activityName,
      required String activityId,
      required String activityImage,
      required String songUrl,
      required String subtitle}) = _Recent;

  factory Recent.fromJson(Map<String, dynamic> json) => _$RecentFromJson(json);
}
