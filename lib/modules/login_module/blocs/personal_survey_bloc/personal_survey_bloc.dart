import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_models/personal_survey_model/personal_survey_model.dart';
import '../../models/answer_model/answer_model.dart';
import '../../models/questionnaire_model/questionnaire_model.dart';

part 'personal_survey_bloc.freezed.dart';
part 'personal_survey_event.dart';
part 'personal_survey_state.dart';

final dataJson = {
  "surveyData": [
    {
      "quesionId": 1000,
      "infoName": "status",
      "question": "Your marital status",
      "options": [
        {"id": 10010, "value": "Married", "referenceId": 1001},
        {"id": 10011, "value": "Unmarried", "referenceId": 1001}
      ]
    },
    {
      "quesionId": 1001,
      "infoName": "occupation",
      "question": "What is your current occupation?",
      "options": [
        {"id": 10012, "value": "Student", "referenceId": 1003},
        {"id": 10013, "value": "Unemployed", "referenceId": 1003},
        {"id": 10014, "value": "Employee", "referenceId": 1002},
        {"id": 10015, "value": "Entrepreneur", "referenceId": 1002},
        {"id": 10016, "value": "Self-Employed", "referenceId": 1002}
      ]
    },
    {
      "quesionId": 1002,
      "infoName": "experience",
      "question": "What is your experience in the field?",
      "options": [
        {"id": 10017, "value": "0-1", "referenceId": 1003},
        {"id": 10018, "value": "2-5", "referenceId": 1003},
        {"id": 10019, "value": "6-10", "referenceId": 1003},
        {"id": 10020, "value": "10+", "referenceId": 1003}
      ]
    },
    {
      "quesionId": 1003,
      "infoName": "meditationTime",
      "question": "Which time you prefer for meditation?",
      "options": [
        {"id": 10021, "value": "Morning", "referenceId": 0},
        {"id": 10022, "value": "Lunch hour", "referenceId": 0},
        {"id": 10023, "value": "Evening", "referenceId": 0},
        {"id": 10024, "value": "Before bed", "referenceId": 0}
      ]
    }
  ]
};

class PersonalSurveyBloc
    extends Bloc<PersonalSurveyEvent, PersonalSurveyState> {
  PersonalSurveyBloc() : super(const _Initial()) {
    on<PersonalSurveyEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _FetchSurveyData) {
          emit(const _Loading());
          final questionnaire = await FirebaseFirestore.instance
              .collection('questions')
              .where('parentAnswerId', arrayContains: event.selectedAnsId)
              .get();

          final answerDocs = await FirebaseFirestore.instance
              .collection('answers')
              .where('questionId', isEqualTo: questionnaire.docs.first.id)
              .get();

          List<AnswerModel> answerList = List<AnswerModel>.from(
              answerDocs.docs.map((e) => AnswerModel.fromJson(e.data())));

          emit(_Success(
              questionnaireModel:
                  QuestionnaireModel.fromJson(questionnaire.docs.first.data()),
              answerList: answerList,
              surveyResult: [],
              selectedAnswer: null,
              showButton: false));
        } else if (event is _ChangeQuestion) {
          emit(_Success(
              questionnaireModel: event.questionnaireModel,
              answerList: event.answerList,
              selectedAnswer: event.selectedAnswer,
              surveyResult: [],
              showButton: false));
          var surveyResult = event.surveyResult.toList();
          surveyResult.add(PersonalSurveyResult()
            ..answerId = event.selectedAnswer!.answerId
            ..questionId = event.questionnaireModel.questionId);
          final questionnaire = await FirebaseFirestore.instance
              .collection('questions')
              .where('parentAnswerId',
                  arrayContains: event.selectedAnswer?.answerId)
              .get();

          if (questionnaire.docs.isEmpty) {
            emit(_Success(
                questionnaireModel: event.questionnaireModel,
                answerList: event.answerList,
                selectedAnswer: event.selectedAnswer,
                surveyResult: surveyResult,
                showButton: true));
          } else {
            final answerDocs = await FirebaseFirestore.instance
                .collection('answers')
                .where('questionId', isEqualTo: questionnaire.docs.first.id)
                .get();
            List<AnswerModel> answerList = List<AnswerModel>.from(
                answerDocs.docs.map((e) => AnswerModel.fromJson(e.data())));
            emit(_Success(
                questionnaireModel: QuestionnaireModel.fromJson(
                    questionnaire.docs.first.data()),
                answerList: answerList,
                surveyResult: surveyResult,
                selectedAnswer: null,
                showButton: false));
          }
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }

  // Future<int> getReferenceId() async {
  //   String ageGroup = await IsarServices().getAgeGroup();
  //   if (ageGroup == "3-10" || ageGroup == "11-18") {
  //     return 1003;
  //   } else {
  //     return 1000;
  //   }
  // }
}
