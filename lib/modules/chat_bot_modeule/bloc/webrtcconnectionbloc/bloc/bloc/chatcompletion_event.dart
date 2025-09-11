part of 'chatcompletion_bloc.dart';

@freezed
class ChatcompletionEvent with _$ChatcompletionEvent {
  const factory ChatcompletionEvent.started() = _Started;
  const factory ChatcompletionEvent.chatstart(
    {required List<ChatMessage> data}
  ) = _Chatstart;
  
}