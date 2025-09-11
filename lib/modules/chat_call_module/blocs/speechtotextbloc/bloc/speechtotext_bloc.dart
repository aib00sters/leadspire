import 'dart:async';
import 'package:bloc/bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:speech_to_text/speech_to_text.dart';
// import 'package:speech_to_text/speech_to_text.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/modules/chat_bot_modeule/services/get_message-service.dart';
import 'package:wellbeings/modules/chat_bot_modeule/services/speechtotextservice.dart';
part 'speechtotext_event.dart';
part 'speechtotext_state.dart';
part 'speechtotext_bloc.freezed.dart';

class SpeechtotextBloc extends Bloc<SpeechtotextEvent, SpeechtotextState> {
  // final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _accumulatedText = '';
  bool _shouldStopCompletely = false;
  late FlutterTts flutterTts;
  // FlutterTts flutterTts = FlutterTts();
  Timer? _silenceTimer;
  Timer? _continuousListeningTimer;
  static const Duration _silenceDuration = Duration(seconds: 4);
  static const Duration _maxListeningDuration = Duration(minutes: 10);
  @override
  Future<void> close() async {
    await _cleanup();
    return super.close();
  }

  Future<void> _cleanup() async {
    _silenceTimer?.cancel();
    _continuousListeningTimer?.cancel();
    await flutterTts.stop();
    // await _speech.stop();
    _isListening = false;
    _accumulatedText = '';
    _shouldStopCompletely = false;
  }

  SpeechtotextBloc() : super(const SpeechtotextState.initial()) {
    on<SpeechtotextEvent>((event, emit) async {
      try {
        // emit(SpeechtotextState.initial());
        if (event is _Speechtotextstart) {
          await _speakText(event.text, event.avatharname);
        } else if (event is _Texttospeech) {
          await _startContinuousListening(
              event.assistantid, event.sessionid, event.avatharname, emit);
        } else if (event is _Stoplisten) {
          _shouldStopCompletely = true;
          await _stopListening(event.assistantid, event.sessionid, emit);
        } else if (event is _reset) {
          //await _cleanup(); // Clean up existing resources
          await _initTTS(); // Reinitialize TTS
          emit(SpeechtotextState.resetsucess());
        }
      } catch (e) {
        if (!emit.isDone) {
          emit(const SpeechtotextState.error());
        }
      }
    });
  }
  Future<void> _initTTS() async {
    flutterTts = FlutterTts();
    // await _resetTTSHandlers();
    await flutterTts.setLanguage("en-GB");
    await flutterTts.setVolume(0.5);
    await flutterTts.setSpeechRate(0.5);
  }

  Future<void> _speakText(String? text, String? avatharname) async {
    // await flutterTts.setLanguage("en-US");
    // await flutterTts.setVolume(0.5);
    // await flutterTts.setSpeechRate(0.4);

    // List<Map> voices = await flutterTts.getVoices;
    // print(voices);
    // Check for specific male voices
    flutterTts.getVoices.then((data) {
      try {
        List<Map> voices = List<Map>.from(data);
        // print(voices);
        for (var voice in voices) {
          String name = voice['name'] ?? 'No name';
          String locale = voice['locale'] ?? 'No locale';

          // print('Name: $name, Locale: $locale');
        }
      } catch (e) {
        print("error");
      }
    });
    if (avatharname?.toLowerCase() == 'william') {
      await flutterTts.setPitch(0.8);
      await flutterTts
          .setVoice({"name": "en-in-x-end-local", "locale": "en-IN"});

      // await flutterTts
      //     .setVoice({"name": "hi-in-x-hie-local", "locale": "hi-IN"});
    } else if (avatharname?.toLowerCase() == 'gavin') {
      await flutterTts.setPitch(1);
      await flutterTts
          .setVoice({"name": "hi-in-x-hie-local", "locale": "hi-IN"});
      // await flutterTts
      //     .setVoice({"name": "en-au-x-aud-local", "locale": "en-AU"});
    } else {
      await flutterTts.setPitch(0.4);
    }

    await flutterTts.speak(text??"");
  }

  Future<void> _startContinuousListening(String? assistantId, String? sessionId,
      String? avatharname, Emitter<SpeechtotextState> emit) async {
    printColored(_isListening.toString(), '32');
    if (_isListening) return;

    // bool available = await _speech.initialize(
    //   onStatus: (status) async {
    //     print(status);
    //     if (_shouldStopCompletely) return;
    //     if (status == "notListening" && _accumulatedText.isNotEmpty) {
    //       // AnsiPen pen = AnsiPen()..magenta(bold: true);
    //       // print(pen(""));
    //       printColored("Not listening state", '32');

    //       // await _processAccumulatedText(
    //       //     assistantId, sessionId, emit, avatharname);
    //     } else if (status == "notListening" && _accumulatedText.isEmpty) {
    //       // Optionally restart listening
    //       printColored("Accumulatedtext empty", '33');
    //       // AnsiPen pen = AnsiPen()..green(bold: true);
    //       // print(pen(""));
    //       // Future.microtask(() {
    //       //   if (!isClosed) {

    //       // add(SpeechtotextEvent.texttospeech(
    //       //   assistantid: assistantId,
    //       //   sessionid: sessionId,
    //       //   avatharname: avatharname,
    //       //   question: '',
    //       // ));
    //       //   }
    //       // });
    //     } else if (status == "done" && Platform.isIOS) {
    //       _processAccumulatedText(assistantId, sessionId, emit, avatharname);
    //     }
    //   },
    //   onError: (error) async {
    //     if (error.errorMsg.contains('error_no_match')) {
    //       // AnsiPen pen = AnsiPen()..cyan(bold: true);
    //       // print(pen());
    //       printColored("No match for speech detected. Please try again.", '33');
    //       // print('No match for speech detected. Please try again.');
    //       // Optionally restart listening
    //       Future.microtask(() {
    //         if (!isClosed && !_shouldStopCompletely) {
    //           _isListening = false;
    //           add(SpeechtotextEvent.texttospeech(
    //             assistantid: assistantId,
    //             sessionid: sessionId,
    //             avatharname: avatharname,
    //             question: '',
    //           ));
    //         }
    //       });
    //     } else {
    //       print(error.errorMsg);
    //       printColored("Speech recognition error", '32');
    //       _resetListening(emit);

    //       // Add a small delay before starting new listening
    //       await Future.delayed(Duration(milliseconds: 100));

    //       if (!isClosed && !_shouldStopCompletely) {
    //         add(SpeechtotextEvent.texttospeech(
    //           assistantid: assistantId,
    //           sessionid: sessionId,
    //           avatharname: avatharname,
    //           question: '',
    //         ));
    //       }
    //     }
    //   },
    // );

    // if (available) {
    //   _isListening = true;
    //   _accumulatedText = '';

    //   // Start a timer to ensure the listening doesn't go on indefinitely
    //   _continuousListeningTimer = Timer(_maxListeningDuration, () {
    //     _stopListening(assistantId, sessionId, emit);
    //   });

    //   // _speech.listen(
    //   //   listenOptions: SpeechListenOptions(
    //   //       sampleRate: 16000,
    //   //       partialResults: true,
    //   //       cancelOnError: false,
    //   //       listenMode: ListenMode.dictation),
    //   //   onResult: (result) {
    //   //     // Reset silence timer when speech is detected
    //   //     _silenceTimer?.cancel();

    //   //     // Update accumulated text
    //   //     String newText = result.recognizedWords.trim();
    //   //     if (newText.isNotEmpty) {
    //   //       // _accumulatedText += ' $newText';
    //   //       if (_accumulatedText != newText) {
    //   //         _accumulatedText = newText;
    //   //       }
    //   //       print(_accumulatedText);
    //   //       // Start silence detection timer
    //   //       _silenceTimer = Timer(_silenceDuration, () {
    //   //         // If 3 seconds of silence, process the accumulated text

    //   //         AnsiPen pen = AnsiPen()..white(bold: true);
    //   //         print(pen(_accumulatedText));
    //   //         _processAccumulatedText(
    //   //             assistantId, sessionId, emit, avatharname);
    //   //       });
    //   //       if (!isClosed && !_shouldStopCompletely) {
    //   //         add(SpeechtotextEvent.texttospeech(
    //   //           assistantid: assistantId,
    //   //           sessionid: sessionId,
    //   //           avatharname: avatharname,
    //   //           question: '',
    //   //         ));
    //   //       }
    //   //     }
    //   //   },
    //   //   listenFor: _maxListeningDuration,
    //   //   pauseFor: const Duration(seconds: 3),
    //   //   localeId: 'en_US',
    //   // );
    // } else {
    //   emit(const SpeechtotextState.error());
    // }
  }

  Future<void> _processAccumulatedText(String? assistantId, String? sessionId,
      Emitter<SpeechtotextState> emit, String? avatharname) async {
    if (_accumulatedText.trim().isNotEmpty) {
      try {
        final response = await getmessage(
          asstid: assistantId,
          sessionid: sessionId,
          question: _accumulatedText.trim(),
          imagepath: '',
        );

        // Speak the response
        await _speakText(response.message, avatharname);

        // Reset accumulated text
        _accumulatedText = '';
        try {
          flutterTts.setCompletionHandler(() {
            print("Speech completed handler invoked");
            _isListening = false;
            if (!isClosed &&
                !_shouldStopCompletely &&
                _accumulatedText.isEmpty) {
              add(SpeechtotextEvent.texttospeech(
                assistantid: assistantId,
                sessionid: sessionId,
                avatharname: avatharname,
                question: '',
              ));
            }
          });
        } catch (e) {
          print(e);
          emit(const SpeechtotextState.error());
        }

        // Use bloc add method to restart listening
      } catch (e) {
        if (!emit.isDone) {
          emit(const SpeechtotextState.error());
        }
      }
    } else {
      // AnsiPen pen = AnsiPen()..cyan(bold: true);
      // print(pen());
      printColored(_accumulatedText, '32');
      // If no text, just continue listening

      if (!isClosed) {
        _isListening = false;
        add(SpeechtotextEvent.texttospeech(
          assistantid: assistantId,
          sessionid: sessionId,
          avatharname: avatharname,
          question: '',
        ));
      }
    }
  }

  Future<void> _stopListening(String? assistantId, String? sessionId,
      Emitter<SpeechtotextState> emit) async {
    _silenceTimer?.cancel();
    _continuousListeningTimer?.cancel();
    // _speech.stop();
    await flutterTts.stop();
    _resetListening(emit);

    // Process any remaining accumulated text
    // await _processAccumulatedText(assistantId, sessionId, emit,);
  }

  Future<void> _resetListening(Emitter<SpeechtotextState> emit) async {
    _isListening = false;
    _accumulatedText = '';
    _silenceTimer?.cancel();

    _continuousListeningTimer?.cancel();
    _shouldStopCompletely = false;
  }
}
// class SpeechtotextBloc extends Bloc<SpeechtotextEvent, SpeechtotextState> {
//   final stt.SpeechToText _speech = SpeechToText();
//   bool speechEnabled = false;
//   bool _isListing = false;
//   String wordsSpoken = "";
//   FlutterTts flutterTts = FlutterTts();
//   String _text = '';

//   SpeechtotextBloc() : super(const _Initial()) {
//     //final SpeechToText speechToText = SpeechToText();

//     on<SpeechtotextEvent>((event, emit) async {
//       // TODO: implement event handler
//       emit(const SpeechtotextState.initial());
//       try {
//         if (event is _Speechtotextstart) {
//           await flutterTts.setLanguage("en-US");
//           await flutterTts.setVolume(0.5);
//           await flutterTts.setSpeechRate(0.4);
//           await flutterTts.setPitch(0.4);
//           await flutterTts.speak(event.text);
//         } else if (event is _Texttospeech) {
//           if (!_isListing) {
//             bool available = await _speech.initialize(
//               onStatus: (val) async {
//                 print('onStatus: $val');
//                 if (val == "done") {
//                   print("stoppppppp");
//                   try {
//                     final responce = await getmessage(
//                         asstid: event.assistantid,
//                         sessionid: event.sessionid,
//                         question: _text, imagepath: '');

//                     add(_Speechtotextstart(text: responce.message));
//                   } catch (e) {
//                     emit(const SpeechtotextState.error());
//                   }
//                   flutterTts.setCompletionHandler(() {
//                     print("Complete");
//                     //  _onButtonPressed();
//                   });
//                 }
//               },
//               onError: (val) => print('onError:$val'),
//             );

//             if (available) {
//               stt.ListenMode.deviceDefault;
//               _speech.listen(onResult: (val) {
//                 _text = val.recognizedWords;
//                 if (val.hasConfidenceRating && val.confidence > 0) {}
//               });
//             }
//             _isListing = false;
//           }
//         }
//       } catch (e) {
//         emit(const SpeechtotextState.error());
//       }
//     });
//   }
// }
void printColored(String text, String colorCode) {
  print('\x1B[${colorCode}m$text\x1B[0m');
}
