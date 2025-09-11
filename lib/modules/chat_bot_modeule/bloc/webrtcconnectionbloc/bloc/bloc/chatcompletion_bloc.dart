import 'package:bloc/bloc.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatcompletion_event.dart';
part 'chatcompletion_state.dart';
part 'chatcompletion_bloc.freezed.dart';

class ChatcompletionBloc
    extends Bloc<ChatcompletionEvent, ChatcompletionState> {
  ChatcompletionBloc() : super(const _Initial()) {
    on<ChatcompletionEvent>((event, emit) async {
      // TODO: implement event handler
      if (event is _Chatstart) {
        //await Future.delayed(const Duration(milliseconds: 50));
        emit(ChatcompletionState.chatsuuccess(data: event.data));
      }
    });
  }
}
