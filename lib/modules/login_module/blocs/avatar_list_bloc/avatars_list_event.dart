part of 'avatars_list_bloc.dart';

@freezed
class AvatarsListEvent with _$AvatarsListEvent {
  const factory AvatarsListEvent.getAvatar({required String gender}) =
      _GetAvatar;
  const factory AvatarsListEvent.started() = _Started;
  
}
