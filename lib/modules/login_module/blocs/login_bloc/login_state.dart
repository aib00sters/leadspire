part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.error({
    required String errorMsg,
  }) = _Error;
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = _Loading;
  const factory LoginState.success(
      {required String userId, required String fcmtocken}) = _Success;
  const factory LoginState.editsucess() = _Editsucess;
  

}
