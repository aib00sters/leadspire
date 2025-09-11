part of 'backgroundimagepick_bloc.dart';

@freezed
class BackgroundimagepickEvent with _$BackgroundimagepickEvent {
  const factory BackgroundimagepickEvent.started() = _Started;
  const factory BackgroundimagepickEvent.selectimage({required String selectedimage}) = _selectimage;
  
}