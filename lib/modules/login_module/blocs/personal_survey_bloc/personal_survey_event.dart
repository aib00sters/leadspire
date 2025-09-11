part of 'personal_survey_bloc.dart';

@freezed
class PersonalSurveyEvent with _$PersonalSurveyEvent {
  const factory PersonalSurveyEvent.changeQuestion({
    required QuestionnaireModel questionnaireModel,
    required List<PersonalSurveyResult> surveyResult,
    required List<AnswerModel> answerList,
    required AnswerModel? selectedAnswer,
  }) = _ChangeQuestion;
  const factory PersonalSurveyEvent.fetchSurveyData({
    required String selectedAnsId,
  }) = _FetchSurveyData;
  const factory PersonalSurveyEvent.started() = _Started;
}
