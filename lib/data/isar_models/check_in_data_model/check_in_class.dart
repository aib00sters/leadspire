import 'package:isar/isar.dart';

part 'check_in_class.g.dart';

@collection
class CheckData {
  Id? id = Isar.autoIncrement;

  String? checkInDate;
  String? checkOutDate;
}
