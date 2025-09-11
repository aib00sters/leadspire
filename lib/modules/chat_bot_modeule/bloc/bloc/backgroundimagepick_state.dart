part of 'backgroundimagepick_bloc.dart';

@freezed
class BackgroundimagepickState with _$BackgroundimagepickState {
  const factory BackgroundimagepickState.initial({required String firstimage}) = _Initial;
  const factory BackgroundimagepickState.pickedimage({required String selectedimage}) = _pickedimage;
  
}
