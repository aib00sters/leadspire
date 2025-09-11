part of 'avatars_list_bloc.dart';

@freezed
class AvatarsListState with _$AvatarsListState {
  const factory AvatarsListState.error({required String errorMsg}) = _Error;
  const factory AvatarsListState.initial() = _Initial;
  const factory AvatarsListState.success({
    required AvatarsModel avatarImages,
    required String userName,
    required String name,
  }) = _Success;
}
