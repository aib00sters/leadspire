part of 'session_bloc.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState.initial() = _Initial;

  const factory SessionState.newsessionsuccess(
      { String? sessionid,
       String? name,
       String? image,
      String? heroid,
      String? assistantid,
       String? video,
      bool? istalking}) = _Newsessionsuccess;
  const factory SessionState.newsessionerror() = _Newsessionerror;
}
