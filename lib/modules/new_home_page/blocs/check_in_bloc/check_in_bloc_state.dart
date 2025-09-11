part of 'check_in_bloc_bloc.dart';

@freezed
class CheckInBlocState with _$CheckInBlocState {
  const factory CheckInBlocState.error({required String errorMessage}) = _Error;

  const factory CheckInBlocState.initial() = _Initial;

  const factory CheckInBlocState.loading() = _Loading;

  const factory CheckInBlocState.success(
      {required String date,
      required String time,
      required bool checkInStatus,
      required bool checkOutStatus}) = _Success;
}
