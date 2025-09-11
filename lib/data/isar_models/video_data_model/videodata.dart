import 'package:isar/isar.dart';

part 'videodata.g.dart';

@collection
class VideoData {
  Id id = Isar.autoIncrement;
  String? title;
  String? time;
  String? duration;
  DateTime? date;
  String? note;
}
