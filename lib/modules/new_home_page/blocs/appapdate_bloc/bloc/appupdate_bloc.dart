import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'appupdate_event.dart';
part 'appupdate_state.dart';
part 'appupdate_bloc.freezed.dart';

class AppupdateBloc extends Bloc<AppupdateEvent, AppupdateState> {
  AppupdateBloc() : super(const _Initial()) {
    on<AppupdateEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is _checkupdate) {
        try {
          PackageInfo packageInfo = await PackageInfo.fromPlatform();
          print(packageInfo.buildNumber);
          // DocumentSnapshot appUpdateDoc = await firestore.collection('appUpdate').doc('your_app_version_here').get();
          final appUpdateDoc = await FirebaseFirestore.instance
              .collection("appupdate")
              .doc("appversion")
              .get();
          print("theversion from${appUpdateDoc["appversion"]}");
          int number = int.parse(appUpdateDoc["appversion"]);
          int mypackagenumber = int.parse(packageInfo.buildNumber);
          if (mypackagenumber < number) {
            emit(AppupdateState.upadteavailable(
                link: appUpdateDoc["appplaystorelink"]));
          }
        } catch (e) {
          
        }
      }
    });
  }
}
