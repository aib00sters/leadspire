// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      activityName: json['activityName'] as String,
      activityId: json['activityId'] as String,
      subTitle: json['subTitle'] as String,
      activityImage: json['activityImage'] as String,
      songUrl: json['songUrl'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'activityName': instance.activityName,
      'activityId': instance.activityId,
      'subTitle': instance.subTitle,
      'activityImage': instance.activityImage,
      'songUrl': instance.songUrl,
      'type': instance.type,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      categoryName: json['categoryName'] as String,
      categoryId: json['categoryId'] as String,
      activities: (json['activities'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'categoryId': instance.categoryId,
      'activities': instance.activities,
    };

_$MeditationListModelImpl _$$MeditationListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeditationListModelImpl(
      result: Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MeditationListModelImplToJson(
        _$MeditationListModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };
