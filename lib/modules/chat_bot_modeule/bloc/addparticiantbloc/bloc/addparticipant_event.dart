part of 'addparticipant_bloc.dart';

@freezed
class AddparticipantEvent with _$AddparticipantEvent {
  const factory AddparticipantEvent.started() = _Started;
  const factory AddparticipantEvent.addparticipant({required Item item}) = _Addparticipant;
  const factory AddparticipantEvent.clearparticipant() = _Clear;
  const factory AddparticipantEvent.loadparticiapants() = _Loadparticiapants;
  
  
  
  
  
}