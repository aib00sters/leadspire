part of 'age_selection_bloc.dart';

@freezed
class AgeSelectionState with _$AgeSelectionState {
  const factory AgeSelectionState.error({required String errorMsg}) = _Error;
  const factory AgeSelectionState.initial() = _Initial;
  const factory AgeSelectionState.loading() = _Loading;
  const factory AgeSelectionState.success({
    required List<AgeGroupModel> ageGroupModel,
    required int selectedIndex,
  }) = _Success;
}
