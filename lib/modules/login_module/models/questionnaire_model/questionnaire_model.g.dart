// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionnaire_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionnaireModelImpl _$$QuestionnaireModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionnaireModelImpl(
      imageUrl: json['imageUrl'] as String,
      title: json['title'] as String,
      subTitle: json['subTitle'] as String,
      questionId: json['questionId'] as String,
      parentAnswerId: (json['parentAnswerId'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$QuestionnaireModelImplToJson(
        _$QuestionnaireModelImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'questionId': instance.questionId,
      'parentAnswerId': instance.parentAnswerId,
    };
