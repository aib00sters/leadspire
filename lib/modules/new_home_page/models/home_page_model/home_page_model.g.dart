// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      catId: json['catId'] as String,
      catName: json['catName'] as String,
      imageUrl: json['imageUrl'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'catId': instance.catId,
      'catName': instance.catName,
      'imageUrl': instance.imageUrl,
    };

_$HomeDataImpl _$$HomeDataImplFromJson(Map<String, dynamic> json) =>
    _$HomeDataImpl(
      recent: (json['recent'] as List<dynamic>)
          .map((e) => Recent.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeDataImplToJson(_$HomeDataImpl instance) =>
    <String, dynamic>{
      'recent': instance.recent,
      'categories': instance.categories,
    };

_$HomePageModelImpl _$$HomePageModelImplFromJson(Map<String, dynamic> json) =>
    _$HomePageModelImpl(
      homeData: HomeData.fromJson(json['homeData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomePageModelImplToJson(_$HomePageModelImpl instance) =>
    <String, dynamic>{
      'homeData': instance.homeData,
    };

_$RecentImpl _$$RecentImplFromJson(Map<String, dynamic> json) => _$RecentImpl(
      activityName: json['activityName'] as String,
      activityId: json['activityId'] as String,
      activityImage: json['activityImage'] as String,
      songUrl: json['songUrl'] as String,
      subtitle: json['subtitle'] as String,
    );

Map<String, dynamic> _$$RecentImplToJson(_$RecentImpl instance) =>
    <String, dynamic>{
      'activityName': instance.activityName,
      'activityId': instance.activityId,
      'activityImage': instance.activityImage,
      'songUrl': instance.songUrl,
      'subtitle': instance.subtitle,
    };
