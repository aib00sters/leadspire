part of 'chatai_bloc.dart';

@freezed
class ChataiEvent with _$ChataiEvent {
  const factory ChataiEvent.started() = _Started;
  const factory ChataiEvent.startchat({String? assistantid,required String? sessionid,required String question,required String imagepath,required String filetype}) = _Startchat;
  const factory ChataiEvent.chathistory({required Historymodel data}) = _chathistory;
  const factory ChataiEvent.clearchat() = _clearchat;
  
  
}