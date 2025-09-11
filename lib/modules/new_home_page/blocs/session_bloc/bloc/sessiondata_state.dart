part of 'sessiondata_bloc.dart';

@freezed
class SessiondataState with _$SessiondataState {
  const factory SessiondataState.initial() = _Initial;
  const factory SessiondataState.getsessionssuccess(
      {List<SessionDetail>? data,
       String? assistantid,
      String? assistantname,
      String? image,
      String? heroindex,
       String? video,
       bool? istalking}) = _Getsessionssuccess;
  const factory SessiondataState.sessionsempty(
      {String? assistantid,
       String? assistantname,
      String? image,
       String? heroindex,
       String? video,
       bool? istalking}) = _Sessionsempty;
  const factory SessiondataState.error() = _Error;
}
