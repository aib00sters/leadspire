part of 'appupdate_bloc.dart';

@freezed
class AppupdateState with _$AppupdateState {
  const factory AppupdateState.initial() = _Initial;
  const factory AppupdateState.upadteavailable({required String link}) = _upadteavailable;
  const factory AppupdateState.noupdate() = _notupdate;
  
  
}
