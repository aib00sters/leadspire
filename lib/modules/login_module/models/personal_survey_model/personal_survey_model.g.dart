// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_survey_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OptionImpl _$$OptionImplFromJson(Map<String, dynamic> json) => _$OptionImpl(
      id: (json['id'] as num).toInt(),
      value: json['value'] as String,
      referenceId: (json['referenceId'] as num).toInt(),
    );

Map<String, dynamic> _$$OptionImplToJson(_$OptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'referenceId': instance.referenceId,
    };

_$PersonalSurveyModelImpl _$$PersonalSurveyModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PersonalSurveyModelImpl(
      surveyData: (json['surveyData'] as List<dynamic>)
          .map((e) => SurveyDatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PersonalSurveyModelImplToJson(
        _$PersonalSurveyModelImpl instance) =>
    <String, dynamic>{
      'surveyData': instance.surveyData,
    };

_$SurveyDatumImpl _$$SurveyDatumImplFromJson(Map<String, dynamic> json) =>
    _$SurveyDatumImpl(
      quesionId: (json['quesionId'] as num).toInt(),
      infoName: json['infoName'] as String,
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SurveyDatumImplToJson(_$SurveyDatumImpl instance) =>
    <String, dynamic>{
      'quesionId': instance.quesionId,
      'infoName': instance.infoName,
      'question': instance.question,
      'options': instance.options,
    };
