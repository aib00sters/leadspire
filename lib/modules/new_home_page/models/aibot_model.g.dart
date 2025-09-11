// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aibot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AibotModelImpl _$$AibotModelImplFromJson(Map<String, dynamic> json) =>
    _$AibotModelImpl(
      botname: json['botname'] as String,
      threadId: json['threadId'] as String,
      assistantId: json['assistantId'] as String,
      botimage: json['botimage'] as String,
      botid: (json['botid'] as num).toInt(),
    );

Map<String, dynamic> _$$AibotModelImplToJson(_$AibotModelImpl instance) =>
    <String, dynamic>{
      'botname': instance.botname,
      'threadId': instance.threadId,
      'assistantId': instance.assistantId,
      'botimage': instance.botimage,
      'botid': instance.botid,
    };
