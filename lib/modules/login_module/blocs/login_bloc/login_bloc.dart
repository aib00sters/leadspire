import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_models/user_data_model/user_data_class.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/firebase_services.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const _Initial()) {
    on<LoginEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _Login) {
          emit(const _Loading());
          final fcmToken = await FirebaseMessaging.instance.getToken();

          final loginid = await IsarServices().getLoginId();
          final phonenumber = await IsarServices().getPhoneNumber();

          print(loginid);
          final user = await FirebaseFirestore.instance
              .collection('users')
              .where('fcmToken', isEqualTo: fcmToken)
              //.where('fcmToken', isEqualTo: loginid)
              .get();
          final surveyResult = await IsarServices().getSurveyData();

          if (user.docs.isEmpty) {
            Map<String, dynamic> userData = {
              'fcmToken': fcmToken,
              'uniqueid': loginid,
              'name': event.name,
              'profilePic': event.profileImage,
              'userName': event.userName,
              'friends': [],
              'phone': phonenumber,
              'surveyData': surveyResult.map(
                  (e) => {"questionId": e.questionId, "answerId": e.answerId})
            };
            final docRef = await FirebaseFirestore.instance
                .collection('users')
                .add(userData);
            await saveUserData(
              userId: docRef.id,
              name: event.name,
              imagePath: event.profileImage,
              fcmToken: fcmToken,
              //fcmToken: loginid,
              userName: event.userName,
            );
            emit(_Success(userId: docRef.id, fcmtocken: fcmToken!));
            //emit(_Success(userId: docRef.id, fcmtocken: loginid!));
          } else {
            var userDocSnapShot = user.docs.where(
                (element) => (element.get('userName') == event.userName));
            if (userDocSnapShot.toList().isNotEmpty) {
              Map<String, dynamic> userData = {
                'fcmToken': fcmToken,
                'uniqueid': loginid,
                'name': event.name,
                'profilePic': event.profileImage,
                'userName': event.userName,
                'surveyData': surveyResult.map(
                    (e) => {"questionId": e.questionId, "answerId": e.answerId})
              };
              await FirebaseFirestore.instance
                  .collection('users')
                  .doc(userDocSnapShot.first.id)
                  .update(userData);
              await saveUserData(
                userId: userDocSnapShot.first.id,
                name: event.name,
                imagePath: event.profileImage,
                fcmToken: fcmToken,
                //fcmToken: loginid,
                userName: event.userName,
              );
            } else {
              Map<String, dynamic> userData = {
                'fcmToken': fcmToken,
                'uniqueid': loginid,
                'name': event.name,
                'profilePic': event.profileImage,
                'userName': event.userName,
                'friends': [],
                'surveyData': surveyResult.map(
                    (e) => {"questionId": e.questionId, "answerId": e.answerId})
              };
              final docRef = await FirebaseFirestore.instance
                  .collection('users')
                  .add(userData);
              await saveUserData(
                userId: docRef.id,
                name: event.name,
                imagePath: event.profileImage,
                fcmToken: fcmToken,
                //fcmToken: loginid,
                userName: event.userName,
              );
            }

            await FireBaseServices().subScribeToTopics([user.docs.first.id]);

            final userId = await IsarServices().getUserId();
            emit(_Success(userId: userId, fcmtocken: fcmToken!));
            //emit(_Success(userId: userId, fcmtocken: loginid!));
          }
        } else if (event is _ChangeUserName) {
          final userId = await IsarServices().getUserId();

          Map<String, dynamic> userData = {
            'name': event.name,
            'profilePic': event.profileImage,
            'userName': event.userName,
          };
          await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .update(userData);
          var userDataSnapshot = await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .get();
          print(userDataSnapshot["name"]);
          print(userDataSnapshot["userName"]);
          await saveUserData(
            userId: userDataSnapshot.id,
            name: userDataSnapshot["name"],
            imagePath: userDataSnapshot["profilePic"],
            fcmToken: userDataSnapshot["fcmToken"],
            //fcmToken: loginid,
            userName: userDataSnapshot["userName"],
          );

          final fcmTocken = await IsarServices().getFcmToken();
          //final loginid = await IsarServices().getLoginId();
          emit(_Success(userId: userId, fcmtocken: fcmTocken));
          //emit(_Success(userId: userId, fcmtocken: loginid!));
        }
      } catch (e) {
        log(e.toString());
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
  Future<void> saveUserData(
      {required String userId,
      required String name,
      required String imagePath,
      required String userName,
      String? fcmToken}) async {
    final isar = await IsarServices().openDB();
    var data = await isar.userDatas.get(0);
    if (data == null) {
      data = UserData()
        ..userId = userId
        ..name = name
        ..fcmToken = fcmToken
        ..userName = userName
        ..avatarImage = imagePath;
    } else {
      data.userId = userId;
      data.name = name;
      data.fcmToken = fcmToken;
      data.avatarImage = imagePath;
      data.userName = userName;
    }
    isar.writeTxnSync(() {
      isar.userDatas.putSync(data!);
    });
  }
}
