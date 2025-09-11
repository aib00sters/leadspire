part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loadProfileSuccess({
    required String profilePic,
    required String name,
    required String userName,
    required String ageGroup,
    required String gender,
  }) = _LoadProfileSuccess;
}
