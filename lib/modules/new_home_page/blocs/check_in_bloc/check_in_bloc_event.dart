part of 'check_in_bloc_bloc.dart';

@freezed
class CheckInBlocEvent with _$CheckInBlocEvent {
  const factory CheckInBlocEvent.checkDate(
      {required bool checkInStatus, required bool checkOutStatus}) = _CheckDate;
  const factory CheckInBlocEvent.fetchCheckInDate() = _FetchCheckInDate;
  const factory CheckInBlocEvent.started() = _Started;
}
