import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/utilities/app_functions.dart';

part 'check_in_bloc_bloc.freezed.dart';
part 'check_in_bloc_event.dart';
part 'check_in_bloc_state.dart';

class CheckInBlocBloc extends Bloc<CheckInBlocEvent, CheckInBlocState> {
  var currentDate = DateTime.now().toString();
  DateTime newDateTime = DateTime.parse(DateTime.now().toString());
  DateTime? checkInDate;
  DateTime? checkOutDate;

  CheckInBlocBloc() : super(const _Initial()) {
    on<CheckInBlocEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _CheckDate) {
          emit(const _Loading());

          if (event.checkInStatus) {
            await IsarServices()
                .saveCheckInDate(checkInDate: DateTime.now().toString());

            checkInDate = DateTime.parse(await IsarServices().getCheckInDate());

            emit(_Success(
              date: getCurrentDate(DateTime.now().toString()),
              time: getCurrentTime(DateTime.now().toString()),
              checkInStatus: false,
              checkOutStatus: true,
            ));
          } else {
            await IsarServices()
                .saveCheckOutDate(checkOutDate: DateTime.now().toString());
            checkOutDate =
                DateTime.parse(await IsarServices().getCheckOutDate());

            emit(_Success(
              date: getCurrentDate(DateTime.now().toString()),
              time: "",
              checkInStatus: true,
              checkOutStatus: false,
            ));
          }
          if (checkInDate == null) {
            await IsarServices()
                .saveCheckInDate(checkInDate: DateTime.now().toString());
            emit(_Success(
                date: getCurrentDate(currentDate),
                time: "",
                checkInStatus: true,
                checkOutStatus: false));
          }
        } else if (event is _FetchCheckInDate) {
          if (await IsarServices().getCheckInDate() != "") {
            checkInDate = DateTime.parse(await IsarServices().getCheckInDate());
            checkOutDate =
                DateTime.parse(await IsarServices().getCheckOutDate());
            if (checkInDate.toString() != "") {
              emit(_Success(
                date: getCurrentDate(checkInDate.toString()),
                time: "",
                checkInStatus: true,
                checkOutStatus: false,
              ));
            } else if (checkOutDate.toString() != "") {
              emit(_Success(
                date: getCurrentDate(checkInDate.toString()),
                time: "",
                checkInStatus: false,
                checkOutStatus: true,
              ));
            } else if (checkInDate.toString() == "" &&
                checkOutDate.toString() == "") {
              emit(_Success(
                date: getCurrentDate(DateTime.now().toString()),
                time: "",
                checkInStatus: true,
                checkOutStatus: false,
              ));
            }
          } else {
            emit(_Success(
              date: getCurrentDate(currentDate),
              time: "",
              checkInStatus: true,
              checkOutStatus: false,
            ));
          }
        }
      } catch (e) {
        emit(_Error(errorMessage: e.toString()));
      }
    });
  }
}
