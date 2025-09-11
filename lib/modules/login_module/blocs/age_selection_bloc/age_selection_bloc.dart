import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/age_group_model/age_group_model.dart';

part 'age_selection_bloc.freezed.dart';
part 'age_selection_event.dart';
part 'age_selection_state.dart';

class AgeSelectionBloc extends Bloc<AgeSelectionEvent, AgeSelectionState> {
  AgeSelectionBloc() : super(const _Initial()) {
    on<AgeSelectionEvent>((event, emit) async {
      try {
        emit(const _Initial());
        if (event is _FetchAgeGroup) {
          emit(const _Loading());
          final ageGroupsSnapShot =
              await FirebaseFirestore.instance.collection('ageGroup').get();
          List<AgeGroupModel> ageGroups = List<AgeGroupModel>.from(
              ageGroupsSnapShot.docs
                  .map((e) => AgeGroupModel.fromJson(e.data())));
          emit(_Success(ageGroupModel: ageGroups, selectedIndex: -1));
        } else if (event is _SelectageGroup) {
          emit(_Success(
              ageGroupModel: event.ageGroups,
              selectedIndex: event.selectedIndex));
        }
      } catch (e) {
        emit(_Error(errorMsg: e.toString()));
      }
    });
  }
}
