import 'package:isar/isar.dart';

part 'recordings_mode.g.dart';

@collection
class RecordingData {
  Id id = Isar.autoIncrement;
  String? name;
  String? filePath;
  String? type;
  DateTime? dateTime;
}
