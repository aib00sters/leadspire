// To parse this JSON data, do
//
//     final personalSurveyModel = personalSurveyModelFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_survey_model.freezed.dart';
part 'personal_survey_model.g.dart';

@freezed
class Option with _$Option {
  const factory Option({
    required int id,
    required String value,
    required int referenceId,
  }) = _Option;

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);
}

@freezed
class PersonalSurveyModel with _$PersonalSurveyModel {
  const factory PersonalSurveyModel({
    required List<SurveyDatum> surveyData,
  }) = _PersonalSurveyModel;

  factory PersonalSurveyModel.fromJson(Map<String, dynamic> json) =>
      _$PersonalSurveyModelFromJson(json);
}

@freezed
class SurveyDatum with _$SurveyDatum {
  const factory SurveyDatum({
    required int quesionId,
    required String infoName,
    required String question,
    required List<Option> options,
  }) = _SurveyDatum;

  factory SurveyDatum.fromJson(Map<String, dynamic> json) =>
      _$SurveyDatumFromJson(json);
}
