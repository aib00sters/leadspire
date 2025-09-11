part of 'sessiondata_bloc.dart';

@freezed
class SessiondataEvent with _$SessiondataEvent {
  const factory SessiondataEvent.started() = _Started;
  const factory SessiondataEvent.getsessions(
      {String? assistantid,
       String? assistantname,
       String? image,
       String? heroindex,
       String? avatar_video,
       bool? istalking}) = _Getsessions;
}
