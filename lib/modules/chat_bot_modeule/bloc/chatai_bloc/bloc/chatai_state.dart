part of 'chatai_bloc.dart';

@freezed
class ChataiState with _$ChataiState {
  const factory ChataiState.initial() = _Initial;
  const factory ChataiState.chatSuccess({required List<ChatMessage> data,required String message }) = _ChatSuccess;
  const factory ChataiState.chatError() = _ChatError;
  const factory ChataiState.loading() = _loading;
 
  
  
}
