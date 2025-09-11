import 'package:isar/isar.dart';

part 'user_data_class.g.dart';

@collection
class UserData {
  Id id = 0;
  String? userId;
  String? reason;
  String? gender;
  String? avatarImage;
  String? name;
  String? userName;
  String? age;
  String? date;
  String? fcmToken;
  String? loginId;
}
