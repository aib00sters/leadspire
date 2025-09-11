part of 'notification_listener_bloc.dart';

@freezed
class NotificationListenerEvent with _$NotificationListenerEvent {
  const factory NotificationListenerEvent.listen() = _Listen;
  const factory NotificationListenerEvent.started() = _Started;
}
