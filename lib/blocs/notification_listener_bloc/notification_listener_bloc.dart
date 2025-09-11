import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_listener_bloc.freezed.dart';
part 'notification_listener_event.dart';
part 'notification_listener_state.dart';

class NotificationListenerBloc
    extends Bloc<NotificationListenerEvent, NotificationListenerState> {
  NotificationListenerBloc() : super(const _Initial()) {
    on<NotificationListenerEvent>((event, emit) async {
      emit(const _Initial());
      try {
        if (event is _Listen) {
          emit(const _Loading());

          await emit.forEach(
            FirebaseMessaging.onMessage,
            onData: (data) {
              return _Success(message: data);
            },
          );
        }
      } catch (e) {
        emit(_Error(erroMsg: e.toString()));
      }
    });
  }
}
