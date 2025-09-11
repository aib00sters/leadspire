part of 'username_validation_bloc.dart';

@freezed
class UsernameValidationEvent with _$UsernameValidationEvent {
  const factory UsernameValidationEvent.started() = _Started;
  const factory UsernameValidationEvent.validate({
    required String userName,
  }) = _Validate;
}
