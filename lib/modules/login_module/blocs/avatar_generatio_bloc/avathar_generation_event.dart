part of 'avathar_generation_bloc.dart';

@freezed
class AvatharGenerationEvent with _$AvatharGenerationEvent {
  const factory AvatharGenerationEvent.started() = _Started;
  const factory AvatharGenerationEvent.getAvatar({required String dec}) = _getAvatar;
  
}