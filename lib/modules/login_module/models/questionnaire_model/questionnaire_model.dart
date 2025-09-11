import 'package:freezed_annotation/freezed_annotation.dart';

part 'questionnaire_model.freezed.dart';
part 'questionnaire_model.g.dart';

@freezed
class QuestionnaireModel with _$QuestionnaireModel {
  const factory QuestionnaireModel({
    required String imageUrl,
    required String title,
    required String subTitle,
    required String questionId,
    required List<String> parentAnswerId,
  }) = _QuestionnaireModel;

  factory QuestionnaireModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireModelFromJson(json);
}
