part of 'chatcompletion_bloc.dart';

@freezed
class ChatcompletionState with _$ChatcompletionState {
  const factory ChatcompletionState.initial() = _Initial;
  const factory ChatcompletionState.chatsuuccess({required List<ChatMessage> data}) = _chatsuuccess;
  
}
