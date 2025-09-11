import 'package:bloc/bloc.dart';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/webrtcspeak_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/models/history_model.dart';

import 'package:wellbeings/modules/chat_bot_modeule/services/get_message-service.dart';

part 'chatai_event.dart';
part 'chatai_state.dart';
part 'chatai_bloc.freezed.dart';

class ChataiBloc extends Bloc<ChataiEvent, ChataiState> {
  final WebrtcspeakBloc _webrtcspeakBloc;

  ChataiBloc(this._webrtcspeakBloc) : super(const _Initial()) {
    List<ChatMessage> messages = [];
    // List<ChatMedia> medias = [
    //   ChatMedia(
    //       fileName: "d",
    //       url:
    //           'https://firebasestorage.googleapis.com/v0/b/wellbeing-b147a.appspot.com/o/Mask%20Group%2026.png?alt=media&token=23167bcd-49d8-44f8-a736-f6f0f63ed245',
    //       type: MediaType.image)
    // ];
    on<ChataiEvent>((event, emit) async {
      // TODO: implement event handler
      emit(const ChataiState.initial());

      final ChatUser gptChatUser =
          ChatUser(id: '2', firstName: "Assistant", lastName: '');
      if (event is _Startchat) {
        try {
          // emit(const ChataiState.loading());
          final userMessage = ChatMessage(
            medias: event.imagepath != ""
                ? [
                    ChatMedia(
                        fileName: "user_image",
                        url: event.imagepath,
                        type: MediaType.image)
                  ]
                : [],
            text: event.question,
            user: ChatUser(id: "1"),
            createdAt: DateTime.now(),
          );

          messages.insert(0, userMessage);
          emit(ChataiState.chatSuccess(data: List.from(messages), message: ''));
          final typingMessage = ChatMessage(
            text: "Assistant is typing...",
            user: ChatUser(id: "2"),
            createdAt: DateTime.now(),
            customProperties: {'isTyping': true},
          );
          messages.insert(0, typingMessage);
          emit(ChataiState.chatSuccess(
            data: List.from(messages),
            message: '',
          ));
          final response = await getmessage(
              asstid: event.assistantid,
              sessionid: event.sessionid,
              question: event.question,
              imagepath: '');
          messages.removeWhere(
              (message) => message.customProperties?['isTyping'] == true);
          final assistantMessage = ChatMessage(
            text: response.message,
            user: ChatUser(id: "2"),
            createdAt: DateTime.now(),
            customProperties: {'image': event.imagepath},
          );
          messages.insert(0, assistantMessage);

          print(messages);
          emit(ChataiState.chatSuccess(
              data: messages, message: response.message));
        } catch (e) {
          emit(const ChataiState.chatError());
        }
      } else if (event is _chathistory) {
        emit(const ChataiState.loading());
        messages = event.data.messages.reversed.map((message) {
          final isUserMsg = message.isUserMsg;
          print(isUserMsg);

          return ChatMessage(
            text: isUserMsg
                ? message.msg
                : message.msg, // Use response for assistant
            user: isUserMsg
                ? ChatUser(id: "1") // Assuming user ID is "1"
                : ChatUser(id: "2"), // Assuming assistant ID is "2"
            createdAt: DateTime.now(),
          );
        }).toList();

        emit(ChataiState.chatSuccess(data: messages, message: ''));
      } else if (event is _clearchat) {
        messages.clear();
      }
    });
  }
}
