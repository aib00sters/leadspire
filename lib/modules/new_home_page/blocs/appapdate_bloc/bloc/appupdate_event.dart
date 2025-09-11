part of 'appupdate_bloc.dart';

@freezed
class AppupdateEvent with _$AppupdateEvent {
  const factory AppupdateEvent.started() = _Started;
  const factory AppupdateEvent.checkupdate() = _checkupdate;
  
}