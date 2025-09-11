import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_model.freezed.dart';
part 'answer_model.g.dart';

@freezed
class AnswerModel with _$AnswerModel {
  const factory AnswerModel({
    required String imageUrl,
    required String answerId,
    required String answer,
    required String questionId,
  }) = _AnswerModel;

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);
}
