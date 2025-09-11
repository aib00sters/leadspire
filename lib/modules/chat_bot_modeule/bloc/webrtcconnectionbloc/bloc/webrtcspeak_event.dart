part of 'webrtcspeak_bloc.dart';

@freezed
class WebrtcspeakEvent with _$WebrtcspeakEvent {
  const factory WebrtcspeakEvent.started() = _Started;
  const factory WebrtcspeakEvent.callavathar({required String imageurl}) = _Callavathar;
  const factory WebrtcspeakEvent.talkstream({required String talk,required List<ChatMessage> data}) = _Talkstream;
  
}