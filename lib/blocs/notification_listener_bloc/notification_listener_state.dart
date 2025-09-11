part of 'notification_listener_bloc.dart';

@freezed
class NotificationListenerState with _$NotificationListenerState {
  const factory NotificationListenerState.error({required String erroMsg}) =
      _Error;
  const factory NotificationListenerState.initial() = _Initial;
  const factory NotificationListenerState.loading() = _Loading;
  const factory NotificationListenerState.success({
    required RemoteMessage message,
  }) = _Success;
}
