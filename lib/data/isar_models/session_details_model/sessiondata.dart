import 'package:isar/isar.dart';

part 'sessiondata.g.dart';

@collection
class SessionData {
  Id id = Isar.autoIncrement;
  String? session;
  String? time;
  DateTime? date;
}
