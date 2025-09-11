part of 'aibotdetails_bloc.dart';

@freezed
class AibotdetailsEvent with _$AibotdetailsEvent {
  const factory AibotdetailsEvent.started() = _Started;
  const factory AibotdetailsEvent.fetchdata() = _Fetchdata;
  
}