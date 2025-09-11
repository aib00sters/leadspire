// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarsModelImpl _$$AvatarsModelImplFromJson(Map<String, dynamic> json) =>
    _$AvatarsModelImpl(
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AvatarsModelImplToJson(_$AvatarsModelImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };
