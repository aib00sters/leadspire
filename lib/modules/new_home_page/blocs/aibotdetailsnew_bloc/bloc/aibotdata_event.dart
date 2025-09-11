part of 'aibotdata_bloc.dart';

@freezed
class AibotdataEvent with _$AibotdataEvent {
  const factory AibotdataEvent.started() = _Started;
  const factory AibotdataEvent.getdata() = _getdata;
  
  
}