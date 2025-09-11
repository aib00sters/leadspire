import 'package:isar/isar.dart';

part 'paint_details_model.g.dart';

@collection
class PaintDetails {
  Id? id;
  String? filepath;
  List<int>? image;
  DateTime? dateTime;
  PaintDetails({
    this.id,
    this.filepath,
    this.image,
    this.dateTime,
  });
}
