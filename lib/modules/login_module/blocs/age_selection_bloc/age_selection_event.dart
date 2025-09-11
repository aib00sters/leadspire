part of 'age_selection_bloc.dart';

@freezed
class AgeSelectionEvent with _$AgeSelectionEvent {
  const factory AgeSelectionEvent.fetchAgeGroup() = _FetchAgeGroup;
  const factory AgeSelectionEvent.selectageGroup({
    required List<AgeGroupModel> ageGroups,
    required int selectedIndex,
  }) = _SelectageGroup;

  const factory AgeSelectionEvent.started() = _Started;
}
