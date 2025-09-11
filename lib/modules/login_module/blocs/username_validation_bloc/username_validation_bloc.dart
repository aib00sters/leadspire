import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'username_validation_bloc.freezed.dart';
part 'username_validation_event.dart';
part 'username_validation_state.dart';

class UsernameValidationBloc
    extends Bloc<UsernameValidationEvent, UsernameValidationState> {
  UsernameValidationBloc() : super(const _Initial()) {
    on<UsernameValidationEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _Validate) {
          emit(const _Loading());
          if (event.userName.trim().isNotEmpty) {
            final fcmToken = await FirebaseMessaging.instance.getToken();
            final docs = await FirebaseFirestore.instance
                .collection('users')
                .where('userName', isEqualTo: event.userName)
                .where('fcmToken', isNotEqualTo: fcmToken)
                .get();

            if (docs.docs.isEmpty) {
              emit(_Success(fcmToken: fcmToken!, userName: event.userName));
            } else {
              emit(const _ValidationError(errorMsg: "Username already exists"));
            }
          } else {
            emit(const _ValidationError(errorMsg: "User name can't be empty"));
          }
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
