import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/models/newservicemodel.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/models/sessionmodel.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/services/oneicecandiate_service.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/services/startstreamservice.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/services/streamservice.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/services/talkstream_service.dart';
import 'package:wellbeings/modules/chat_bot_modeule/chat_src/ChatMessage.dart';

part 'webrtcspeak_event.dart';
part 'webrtcspeak_state.dart';
part 'webrtcspeak_bloc.freezed.dart';

class WebrtcspeakBloc extends Bloc<WebrtcspeakEvent, WebrtcspeakState> {
  String? streamId = "";
  String? sessionId = "";
  List<MediaStream> streams = [];
  bool isStreamReady = false;
  WebrtcspeakBloc() : super(const _Initial()) {
    on<WebrtcspeakEvent>((event, emit) async {
      // TODO: implement event handler

      if (event is _Callavathar) {
        emit(const WebrtcspeakState.initial());
        try {
          final data = await makePostRequest(imageurl: event.imageurl);
          final response = Newservicemodel.fromJson(data);
          print(response.id);
          isStreamReady = false;
          final sessionClientAnswer =
              await createConnection(response.offer, response.iceServers);
          print(sessionClientAnswer.streams);

          final sessionid = await sendSDPToServer(
              sessionClientAnswer.sessionClientAnswer,
              response.id,
              response.sessionId,
              "");
          final sessionisd = Sessionmodel.fromJson(sessionid);
          print("sessioid=$sessionisd");
          print("icecandiates=${sessionClientAnswer.iceCandidates}");
          await setIceCandidateHandler(
              peerConnection: sessionClientAnswer.peerConnection,
              streamId: response.id,
              sessionId: sessionisd.sessionId,
              apiKey: '',
              //iceCandidates: sessionClientAnswer.iceCandidates
              iceCandidates: Queue<RTCIceCandidate>.from(
                  sessionClientAnswer.iceCandidates));
          isStreamReady = true;
          streamId = response.id;
          sessionId = sessionisd.sessionId;
          streams = sessionClientAnswer.streams;
        } catch (e) {
          emit(const WebrtcspeakState.error());
        }
      } else if (event is _Talkstream) {
        if (!isStreamReady) {
          emit(const WebrtcspeakState.error());
          return;
        }
        print(event.data.first.text);
        //emit(WebrtcspeakState.chatsucess(data: event.data));
        ///await Future.delayed(const Duration(milliseconds: 100));
        emit(WebrtcspeakState.sucessnewStream(
            streams: streams, streamId: streamId, sessionId: sessionId));
        //await Future.delayed(const Duration(milliseconds: 300));
        final talkStreamResponse = await createTalkStream(
          streamId: streamId,
          sessionId: sessionId,
          talk: event.talk,
        );
      }
    });
  }
  // void startTalkStream(String talk) {
  //   add(_Talkstream(talk: talk));
  // }
}
