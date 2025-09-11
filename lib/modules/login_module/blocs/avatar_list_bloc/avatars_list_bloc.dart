import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';

import 'package:wellbeings/modules/login_module/models/avatar_data/avatars_model/avatar_model.dart';

part 'avatars_list_bloc.freezed.dart';
part 'avatars_list_event.dart';
part 'avatars_list_state.dart';

class AvatarsListBloc extends Bloc<AvatarsListEvent, AvatarsListState> {
  AvatarsListBloc() : super(const _Initial()) {
    on<AvatarsListEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _GetAvatar) {
          String gender = await IsarServices().getGender();
          String userName = '', name = '';
          final fcmToken = await FirebaseMessaging.instance.getToken();
          final querySnaps = await FirebaseFirestore.instance
              .collection('users')
              .where('fcmToken', isEqualTo: fcmToken)
              .get();
          if (querySnaps.docs.isNotEmpty) {
            name = querySnaps.docs.first.get('name');
            userName = querySnaps.docs.first.get('userName');
          }

          final queryAvatars = await FirebaseFirestore.instance
              .collection('avatars')
              .where('gender', isEqualTo: gender.toLowerCase())
              .get();
          AvatarsModel avatarsModel = AvatarsModel(
              result: queryAvatars.docs.map((e) {
            return Result(
              id: 0,
              image: e.get("imageUrl"),
              name: '',
            );
          }).toList());
          emit(_Success(
              avatarImages: avatarsModel, userName: userName, name: name));
          // if (gender == "Male") {
          //   emit(_Success(
          //       name: name,
          //       userName: userName,
          //       avatarImages: AvatarsModel.fromJson(AavatarImages.mensAvatar)));
          // } else {
          //   emit(_Success(
          //       name: name,
          //       userName: userName,
          //       avatarImages:
          //           AvatarsModel.fromJson(AavatarImages.girlsAvatar)));
          // }
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
