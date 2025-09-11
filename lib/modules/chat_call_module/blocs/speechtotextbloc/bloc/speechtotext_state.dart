part of 'speechtotext_bloc.dart';

@freezed
class SpeechtotextState with _$SpeechtotextState {
  const factory SpeechtotextState.initial() = _Initial;
  const factory SpeechtotextState.speechtotextsucess({
    required String text
  }) = _Speechtotextsucess;
  const factory SpeechtotextState.texttospeechsucess({required String text}) = _Texttospeechsucess;
  const factory SpeechtotextState.error() = _Error;
  const factory SpeechtotextState.resetsucess() = _resetsucess;
  
  
}
