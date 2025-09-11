part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireEvent with _$QuestionnaireEvent {
  const factory QuestionnaireEvent.fetchQuestionnaire() = _FetchQuestionnaire;
  const factory QuestionnaireEvent.selectItem({
    required QuestionnaireModel questionnaireModel,
    required List<AnswerModel> answerList,
    required int selectedIndex,
  }) = _Select;
  const factory QuestionnaireEvent.started() = _Started;
}
