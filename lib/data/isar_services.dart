import 'package:camera/camera.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wellbeings/data/isar_models/chat_details_model/chat_details.dart';
import 'package:wellbeings/data/isar_models/check_in_data_model/check_in_class.dart';
import 'package:wellbeings/data/isar_models/logindata_model/logindata.dart';
import 'package:wellbeings/data/isar_models/personal_survey_model/personal_survey_model.dart';
import 'package:wellbeings/data/isar_models/recent_model/recent_model.dart';
import 'package:wellbeings/data/isar_models/session_details_model/sessiondata.dart';
import 'package:wellbeings/data/isar_models/video_data_model/videodata.dart';
import 'isar_models/paint_details_model/paint_details_model.dart';
import 'isar_models/recordings_model/recordings_mode.dart';
import 'isar_models/user_data_model/user_data_class.dart';

class IsarServices {
  Future<void> deleteRecent({required int id}) async {
    final isar = await openDB();
    isar.writeTxnSync(() {
      isar.recentActivities.deleteSync(id);
    });
  }

  Future<void> deleteRecording({required int id}) async {
    final isar = await openDB();
    isar.writeTxnSync(() {
      isar.recordingDatas.deleteSync(id);
    });
  }

  Future<List<CameraDescription>> cameras() async {
    late List<CameraDescription> cameras;
    cameras = await availableCameras();
    return cameras;
  }

  Future<String> getAgeGroup() async {
    final isar = await openDB();
    UserData? collection = await isar.userDatas.get(0);
    if (collection == null) {
      return "";
    } else {
      return collection.age ?? "";
    }
  }

  Future<String> getCheckInDate() async {
    final isar = await openDB();

    final IsarCollection<CheckData> collection = isar.checkDatas;
    final checkData =
        await collection.where(distinct: true, sort: Sort.asc).findAll();
    if (checkData.isNotEmpty) {
      var data = isar.checkDatas.getSync(checkData.last.id!);
      if (data == null) {
        return "";
      } else {
        return data.checkInDate ?? "";
      }
    } else {
      return "";
    }
  }

  Future<String> getCheckOutDate() async {
    final isar = await openDB();
    final IsarCollection<CheckData> collection = isar.checkDatas;
    final checkData =
        await collection.where(distinct: true, sort: Sort.asc).findAll();
    if (checkData.isNotEmpty) {
      var data = isar.checkDatas.getSync(checkData.last.id!);
      if (data == null) {
        return "";
      } else {
        return data.checkOutDate ?? "";
      }
    } else {
      return "";
    }
  }

  Future<String> getFcmToken() async {
    final isar = await openDB();
    UserData? collection = await isar.userDatas.get(0);
    if (collection == null) {
      return "";
    } else {
      return collection.fcmToken ?? "";
    }
  }

  Future<String> getGender() async {
    final isar = await openDB();
    UserData? collection = await isar.userDatas.get(0);
    if (collection == null) {
      return "";
    } else {
      return collection.gender ?? "";
    }
  }

  Future<String> getName() async {
    final isar = await openDB();
    UserData? collection = await isar.userDatas.get(0);
    if (collection == null) {
      return "";
    } else {
      return collection.name ?? "";
    }
  }

  Future<List<dynamic>> getPaintProjects() async {
    final isar = await openDB();
    IsarCollection<PaintDetails> collection = isar.paintDetails;
    return collection.buildQuery().findAllSync();
  }

  Future<List<dynamic>> getSessions() async {
    final isar = await openDB();
    IsarCollection<SessionData> collection = isar.sessionDatas;
    return collection.buildQuery().findAllSync();
  }

  Future<void> saveSession({required String session}) async {
    final isar = await openDB();
    SessionData data;

    data = SessionData()..session = session;
    String formattedTime = DateFormat('HH:mm:ss').format(DateTime.now());
    data.date = DateTime.now();
    data.time = formattedTime;

    isar.writeTxnSync(() {
      isar.sessionDatas.putSync(data);
    });
  }

  Future<List<dynamic>> getsessions() async {
    final isar = await openDB();
    IsarCollection<SessionData> collection = isar.sessionDatas;
    return collection.buildQuery().findAllSync();
  }

  Future<String> getProfilePic() async {
    final isar = await openDB();
    UserData? collection = await isar.userDatas.get(0);
    if (collection == null) {
      return "";
    } else {
      return collection.avatarImage ?? "";
    }
  }

  Future<List<dynamic>> getRecent() async {
    final isar = await openDB();
    IsarCollection<RecentActivities> collection = isar.recentActivities;
    return collection.buildQuery(sortBy: [
      const SortProperty(property: 'time', sort: Sort.desc)
    ]).findAllSync();
  }

  Future<List<dynamic>> getRecordings() async {
    final isar = await openDB();
    IsarCollection<RecordingData> collection = isar.recordingDatas;
    return collection.buildQuery().findAllSync();
  }

  Future<List<dynamic>> getSurveyData() async {
    final isar = await openDB();
    IsarCollection<PersonalSurveyResult> collection =
        isar.personalSurveyResults;
    return collection.buildQuery().findAllSync();
  }

  Future<String> getUserId() async {
    final isar = await openDB();
    UserData? collection = await isar.userDatas.get(0);
    if (collection == null) {
      return "";
    } else {
      return collection.userId ?? "";
    }
  }

  Future<String> getUserName() async {
    final isar = await openDB();
    UserData? collection = await isar.userDatas.get(0);
    if (collection == null) {
      return "";
    } else {
      return collection.userName ?? "";
    }
  }

  Future<bool> isLoggedIn() async {
    final isar = await openDB();
    UserData? collection = await isar.userDatas.get(0);
    if (collection == null) {
      return false;
    } else {
      return collection.name == null ? false : true;
    }
  }

  Future<bool> isChatStarted() async {
    final isar = await openDB();
    ChatData? collection = await isar.chatDatas.get(1);
    if (collection == null) {
      return false;
    } else {
      return collection.documentId == null ? false : true;
    }
  }

  Future<String> getToken() async {
    final isar = await openDB();
    ChatData? collection = await isar.chatDatas.get(1);
    if (collection == null) {
      return "";
    } else {
      return collection.documentId ?? "";
    }
  }

  Future<String?> getChatDocId() async {
    final isar = await openDB();
    ChatData? collection = await isar.chatDatas.get(1);
    if (collection == null) {
      return "";
    } else {
      return collection.documentId;
    }
  }

  Future<void> logOutUser() async {
    final isar = await openDB();
    isar.writeTxnSync(() {
      isar.userDatas.clearSync();
      isar.personalSurveyResults.clearSync();
      isar.loginDatas.clearSync();
      isar.recordingDatas.clearSync();
    });
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        directory: dir.path,
        [
          UserDataSchema,
          CheckDataSchema,
          RecentActivitiesSchema,
          PaintDetailsSchema,
          RecordingDataSchema,
          PersonalSurveyResultSchema,
          ChatDataSchema,
          LoginDataSchema,
          VideoDataSchema,
          SessionDataSchema,
        ],
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance());
  }

  Future<void> saveCheckInDate({required String checkInDate}) async {
    final isar = await openDB();
    CheckData data;

    data = CheckData()..checkInDate = checkInDate;

    isar.writeTxnSync(() {
      isar.checkDatas.putSync(data);
    });
  }

  Future<void> saveLoginId(String? loginid) async {
    final isar =
        await openDB(); // Get your Isar instance; how you do this depends on your setup
    final loginData = LoginData()..loginid = loginid;

    isar.writeTxnSync(() {
      isar.loginDatas.putSync(loginData);
    });
  }

  Future<void> savePhoneNumber(String? phoneNumber) async {
    final isar =
        await openDB(); // Get your Isar instance; how you do this depends on your setup
    final loginData = LoginData()..phoneNumber = phoneNumber;

    isar.writeTxnSync(() {
      isar.loginDatas.putSync(loginData);
    });
  }

  Future<String?> getPhoneNumber() async {
    final isar = await openDB();
    final collection = await isar.loginDatas.get(1);
    if (collection == null) {
      return "";
    } else {
      return collection.phoneNumber;
    }
  }

  Future<String?> getLoginId() async {
    final isar = await openDB();
    final collection = await isar.loginDatas.get(1);
    if (collection == null) {
      return "";
    } else {
      return collection.loginid;
    }
  }

  Future<void> saveCheckOutDate({required String checkOutDate}) async {
    final isar = await openDB();

    //final int? id = await isar.checkDatas.where().idProperty().max();
    final IsarCollection<CheckData> collection = isar.checkDatas;
    final checkData =
        await collection.where(distinct: true, sort: Sort.asc).findAll();
    if (checkData.isNotEmpty) {
      var data = isar.checkDatas.getSync(checkData.last.id!);
      if (data == null) {
        data = CheckData()..checkOutDate = checkOutDate;
      } else {
        data.checkOutDate = checkOutDate;
      }
      isar.writeTxnSync(() {
        isar.checkDatas.putSync(data!);
      });
    }
  }

  Future<int> savePaint({required PaintDetails data}) async {
    final isar = await openDB();
    int id = -1;
    isar.writeTxnSync(() {
      id = isar.paintDetails.putSync(data);
    });
    return id;
  }

  Future<void> saveRecent(RecentActivities data) async {
    final isar = await openDB();
    isar.writeTxnSync(() {
      isar.recentActivities.putSync(data);
    });
  }

  Future<int> saveRecording(RecordingData data) async {
    final isar = await openDB();
    int id = -1;
    isar.writeTxnSync(() {
      id = isar.recordingDatas.putSync(data);
    });
    return id;
  }

  Future<int> saveVideoData(VideoData data) async {
    final isar = await openDB();
    int id = -1;
    isar.writeTxnSync(() {
      id = isar.videoDatas.putSync(data);
    });
    return id;
  }

  Future<VideoData> getVideoData(int id) async {
    final isar = await openDB();
    final collection = await isar.videoDatas.get(id);
    if (collection == null) {
      return VideoData()
        ..date = DateTime.now()
        ..duration = ""
        ..note = ""
        ..time = ""
        ..title = "";
    } else {
      return collection;
    }
  }

  Future<void> saveSurveyData(List<PersonalSurveyResult> data) async {
    final isar = await openDB();

    for (var elemet in data) {
      isar.writeTxnSync(() {
        isar.personalSurveyResults.putSync(elemet);
      });
    }
  }

  Future<void> saveUserId({required String userId}) async {
    final isar = await openDB();
    var data = await isar.userDatas.get(0);
    if (data == null) {
      data = UserData()..userId = userId;
    } else {
      data.age = userId;
    }
    isar.writeTxnSync(() {
      isar.userDatas.putSync(data!);
    });
  }

  Future<void> saveNote({required String note, required String id}) async {
    final isar = await openDB();
    var data = await isar.videoDatas.get(int.parse(id));
    if (data == null) {
      data = VideoData()..note = note;
    } else {
      data.note = note;
    }
    isar.writeTxnSync(() {
      isar.videoDatas.putSync(data!);
    });
  }

  Future<void> updateAge({required String agegroup}) async {
    final isar = await openDB();
    var data = await isar.userDatas.get(0);
    if (data == null) {
      data = UserData()..age = agegroup;
    } else {
      data.age = agegroup;
    }
    isar.writeTxnSync(() {
      isar.userDatas.putSync(data!);
    });
  }

  Future<void> updateAvatarData(
      {required String name, required String imagePath}) async {
    final isar = await openDB();
    var data = await isar.userDatas.get(0);

    data!
      ..name = name
      ..avatarImage = imagePath;

    isar.writeTxnSync(() {
      isar.userDatas.putSync(data);
    });
  }

  Future<void> updateGender({required String gender}) async {
    final isar = await openDB();
    var data = await isar.userDatas.get(0);
    if (data == null) {
      data = UserData()..gender = gender;
    } else {
      data.gender = gender;
    }
    isar.writeTxnSync(() {
      isar.userDatas.putSync(data!);
    });
  }

  Future<void> updateId({required String agegroup}) async {
    final isar = await openDB();
    var data = await isar.userDatas.get(0);
    if (data == null) {
      data = UserData()..age = agegroup;
    } else {
      data.age = agegroup;
    }
    isar.writeTxnSync(() {
      isar.userDatas.putSync(data!);
    });
  }

  Future<void> updateReason({required String reason}) async {
    final isar = await openDB();
    var data = await isar.userDatas.get(0);
    if (data == null) {
      data = UserData()..reason = reason;
    } else {
      data.reason = reason;
    }
    isar.writeTxnSync(() {
      isar.userDatas.putSync(data!);
    });
  }
}
