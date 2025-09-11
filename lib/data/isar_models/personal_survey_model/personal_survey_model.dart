import 'package:isar/isar.dart';

part 'personal_survey_model.g.dart';

int fastHash(String string) {
  var hash = 0xcbf29ce484222325;

  var i = 0;
  while (i < string.length) {
    final codeUnit = string.codeUnitAt(i++);
    hash ^= codeUnit >> 8;
    hash *= 0x100000001b3;
    hash ^= codeUnit & 0xFF;
    hash *= 0x100000001b3;
  }

  return hash;
}

@collection
class PersonalSurveyResult {
  String? questionId;
  String? answerId;
  Id get isarId => fastHash(questionId!);
}
