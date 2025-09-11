part of 'gethistory_bloc.dart';

@freezed
class GethistoryEvent with _$GethistoryEvent {
  const factory GethistoryEvent.started() = _Started;
  const factory GethistoryEvent.gethistory({required String? assistantid,required String? sessionid}) = _Gethistory;
  
}