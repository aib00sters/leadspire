part of 'webrtcspeak_bloc.dart';

@freezed
class WebrtcspeakState with _$WebrtcspeakState {
  const factory WebrtcspeakState.initial() = _Initial;
  const factory WebrtcspeakState.sucessnewStream(
      {required List<MediaStream> streams,
      required String? streamId,
      required String? sessionId}) = _SucessnewStream;
  const factory WebrtcspeakState.successstream(
      {required String? streamId, required String? sessionId}) = _Successstream;
  const factory WebrtcspeakState.error() = _Error;

  const factory WebrtcspeakState.chatsucess({required List<ChatMessage> data}) = _chatsucess;
  
}
