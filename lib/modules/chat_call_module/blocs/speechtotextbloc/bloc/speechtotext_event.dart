part of 'speechtotext_bloc.dart';

@freezed
class SpeechtotextEvent with _$SpeechtotextEvent {
  const factory SpeechtotextEvent.started() = _Started;
  const factory SpeechtotextEvent.reset() = _reset;
  
  const factory SpeechtotextEvent.speechtotextstart({ String? text, String? avatharname}) = _Speechtotextstart;
  const factory SpeechtotextEvent.texttospeech({ String? question, String? assistantid, String? sessionid, String? avatharname}) = _Texttospeech;
  const factory SpeechtotextEvent.stoplisten({ String? question,String? assistantid, String? sessionid,}) = _Stoplisten;
  
}