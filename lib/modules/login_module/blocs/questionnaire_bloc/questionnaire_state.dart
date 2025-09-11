part of 'questionnaire_bloc.dart';

@freezed
class QuestionnaireState with _$QuestionnaireState {
  const factory QuestionnaireState.error({required String errorMessage}) =
      _Error;
  const factory QuestionnaireState.initial() = _Initial;
  const factory QuestionnaireState.loading() = _Loading;
  const factory QuestionnaireState.success({
    required QuestionnaireModel questionnaireModel,
    required List<AnswerModel> answerList,
    required int selectedIndex,
  }) = _Success;
}
