part of 'session_bloc.dart';

@freezed
class SessionEvent with _$SessionEvent {
  const factory SessionEvent.started() = _Started;
  const factory SessionEvent.createnewsession(
      { String? assstId,
       String? name,
       String? image,
       String? herowidgetstring,
       String? video,
      bool? isTalking}) = _createnewsession;
}
