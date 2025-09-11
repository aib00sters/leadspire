import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/isar_services.dart';
import '../../models/answer_model/answer_model.dart';
import '../../models/questionnaire_model/questionnaire_model.dart';

part 'questionnaire_bloc.freezed.dart';
part 'questionnaire_event.dart';
part 'questionnaire_state.dart';

class QuestionnaireBloc extends Bloc<QuestionnaireEvent, QuestionnaireState> {
  QuestionnaireBloc() : super(const _Initial()) {
    on<QuestionnaireEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _FetchQuestionnaire) {
          emit(const _Loading());
          // final List<QuestionnaireModel> list = [
          //   const QuestionnaireModel(optionId: 1000, option: "Change thoughts"),
          //   const QuestionnaireModel(optionId: 1001, option: "Calm anxiety"),
          //   const QuestionnaireModel(optionId: 1002, option: "Be happier"),
          //   const QuestionnaireModel(optionId: 1003, option: "Reduce stress"),
          //   const QuestionnaireModel(optionId: 1004, option: "Track mood"),
          // ];
          final questionnaire = await FirebaseFirestore.instance
              .collection('questions')
              .where('parentAnswerId', isEqualTo: []).get();
          print(questionnaire);
          final answerDocs = await FirebaseFirestore.instance
              .collection('answers')
              .where('questionId', isEqualTo: questionnaire.docs.first.id)
              .get();
          List<AnswerModel> answerList = List<AnswerModel>.from(
              answerDocs.docs.map((e) => AnswerModel.fromJson(e.data())));
              print(answerList);
          emit(_Success(
              questionnaireModel:
                  QuestionnaireModel.fromJson(questionnaire.docs.first.data()),
              selectedIndex: -1,
              answerList: answerList));
        } else if (event is _Select) {
          await IsarServices()
              .updateReason(reason: event.questionnaireModel.title);
          emit(_Success(
              questionnaireModel: event.questionnaireModel,
              selectedIndex: event.selectedIndex,
              answerList: event.answerList));
        }
      } catch (e) {
        emit(_Error(errorMessage: e.toString()));
      }
    });
  }
}
