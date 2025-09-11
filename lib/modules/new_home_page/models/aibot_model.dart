import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'aibot_model.freezed.dart';
part 'aibot_model.g.dart';

@freezed
class AibotModel with _$AibotModel {
    const factory AibotModel({
        required String botname,
        required String threadId,
        required String assistantId,
        required String botimage,
        required int botid,
    }) = _AibotModel;

    factory AibotModel.fromJson(Map<String, dynamic> json) => _$AibotModelFromJson(json);
}
