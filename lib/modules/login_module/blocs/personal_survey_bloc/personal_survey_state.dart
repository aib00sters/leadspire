part of 'personal_survey_bloc.dart';

@freezed
class PersonalSurveyState with _$PersonalSurveyState {
  const factory PersonalSurveyState.error({required String errorMsg}) = _Error;
  const factory PersonalSurveyState.initial() = _Initial;
  const factory PersonalSurveyState.loading() = _Loading;
  const factory PersonalSurveyState.success({
    required QuestionnaireModel questionnaireModel,
    required List<AnswerModel> answerList,
    required AnswerModel? selectedAnswer,
    required List<PersonalSurveyResult> surveyResult,
    required bool showButton,
  }) = _Success;
}
