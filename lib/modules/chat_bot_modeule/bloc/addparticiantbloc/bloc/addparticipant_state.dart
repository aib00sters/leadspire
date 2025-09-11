part of 'addparticipant_bloc.dart';

@freezed
class AddparticipantState with _$AddparticipantState {
  const factory AddparticipantState.initial() = _Initial;

  const factory AddparticipantState.newparticipant({required List<Item> item}) = _Newparticipant;
 
  const factory AddparticipantState.listloading({required List<Item> item}) = _Listloading;
  const factory AddparticipantState.sucess() = _Sucess;
  
  
  
  
  
}
