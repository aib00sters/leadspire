// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnswerModelImpl _$$AnswerModelImplFromJson(Map<String, dynamic> json) =>
    _$AnswerModelImpl(
      imageUrl: json['imageUrl'] as String,
      answerId: json['answerId'] as String,
      answer: json['answer'] as String,
      questionId: json['questionId'] as String,
    );

Map<String, dynamic> _$$AnswerModelImplToJson(_$AnswerModelImpl instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'answerId': instance.answerId,
      'answer': instance.answer,
      'questionId': instance.questionId,
    };
