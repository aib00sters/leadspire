import 'package:isar/isar.dart';

part 'recent_model.g.dart';

@collection
class RecentActivities {
  Id? activityId;
  String? name;
  String? subTitle;
  String? type;
  String? imageUrl;
  String? songUrl;
  DateTime? time;
  RecentActivities({
    this.activityId,
    this.imageUrl,
    this.name,
    this.songUrl,
    this.subTitle,
    this.time,
    this.type,
  });
}
