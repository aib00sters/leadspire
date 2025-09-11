part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.changeUserName({
    required String userName,
    required String name,
    required String profileImage,
  }) = _ChangeUserName;
  const factory LoginEvent.login({
    required String name,
    required String profileImage,
    required String userName,
  }) = _Login;
  const factory LoginEvent.started() = _Started;
}
