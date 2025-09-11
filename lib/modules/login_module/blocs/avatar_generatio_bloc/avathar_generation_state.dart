part of 'avathar_generation_bloc.dart';

@freezed
class AvatharGenerationState with _$AvatharGenerationState {
  const factory AvatharGenerationState.initial() = _Initial;
  const factory AvatharGenerationState.error({required String errorMsg}) =
      _Error;
  const factory AvatharGenerationState.success({
    required AvatarsModel avatarImages,
    required String userName,
    required String name,
  }) = _Success;
}
