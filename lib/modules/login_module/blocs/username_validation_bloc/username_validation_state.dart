part of 'username_validation_bloc.dart';

@freezed
class UsernameValidationState with _$UsernameValidationState {
  const factory UsernameValidationState.error({required String errorMsg}) =
      _Error;
  const factory UsernameValidationState.initial() = _Initial;
  const factory UsernameValidationState.loading() = _Loading;
  const factory UsernameValidationState.success({
    required String fcmToken,
    required String userName,
  }) = _Success;
  const factory UsernameValidationState.validationError(
      {required String errorMsg}) = _ValidationError;
}
