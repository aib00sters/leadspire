import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/modules/chat_bot_modeule/services/get_message-service.dart';
import 'package:wellbeings/modules/chat_bot_modeule/services/speechtotextservice.dart';
part 'speechtotext_event.dart';
part 'speechtotext_state.dart';
part 'speechtotext_bloc.freezed.dart';

class SpeechtotextBloc extends Bloc<SpeechtotextEvent, SpeechtotextState> {
  final stt.SpeechToText _speech = stt.SpeechToText();
  bool _isListening = false;
  String _accumulatedText = '';
  bool _shouldStopCompletely = false;
  late FlutterTts flutterTts;
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
    if (_isListening) {
      await _speech.stop();
    }
    _isListening = false;
    _accumulatedText = '';
    _shouldStopCompletely = false;
  }

  SpeechtotextBloc() : super(const SpeechtotextState.initial()) {
    on<SpeechtotextEvent>((event, emit) async {
      try {
        if (event is _Speechtotextstart) {
          await _speakText(event.text, event.avatharname);
        } else if (event is _Texttospeech) {
          await _startContinuousListening(
              event.assistantid, event.sessionid, event.avatharname, emit);
        } else if (event is _Stoplisten) {
          _shouldStopCompletely = true;
          await _stopListening(event.assistantid, event.sessionid, emit);
        } else if (event is _reset) {
          await _initTTS();
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
    await flutterTts.setLanguage("en-GB");
    await flutterTts.setVolume(0.5);
    await flutterTts.setSpeechRate(0.5);
  }

  Future<void> _speakText(String? text, String? avatharname) async {
    flutterTts.getVoices.then((data) {
      try {
        List<Map> voices = List<Map>.from(data);
        for (var voice in voices) {
          String name = voice['name'] ?? 'No name';
          String locale = voice['locale'] ?? 'No locale';
        }
      } catch (e) {
        print("error");
      }
    });

    if (avatharname?.toLowerCase() == 'william') {
      await flutterTts.setPitch(0.8);
      await flutterTts
          .setVoice({"name": "en-in-x-end-local", "locale": "en-IN"});
    } else if (avatharname?.toLowerCase() == 'gavin') {
      await flutterTts.setPitch(1);
      await flutterTts
          .setVoice({"name": "hi-in-x-hie-local", "locale": "hi-IN"});
    } else {
      await flutterTts.setPitch(0.4);
    }

    await flutterTts.speak(text ?? "");
  }

  Future<void> _startContinuousListening(String? assistantId, String? sessionId,
      String? avatharname, Emitter<SpeechtotextState> emit) async {
    printColored(
        'Starting listening. Current _isListening: ${_isListening.toString()}',
        '32');

    if (_isListening) {
      printColored('Already listening, skipping...', '33');
      return;
    }

    bool available = await _speech.initialize(
      onStatus: (status) async {
        printColored('Status: $status, _isListening: $_isListening', '36');

        if (_shouldStopCompletely) return;

        if (status == "notListening" && _accumulatedText.isNotEmpty) {
          printColored("Not listening state - processing text", '32');
          await _processAccumulatedText(
              assistantId, sessionId, emit, avatharname);
        } else if (status == "notListening" && _accumulatedText.isEmpty) {
          printColored("Accumulatedtext empty - restarting", '33');
          Future.microtask(() {
            if (!isClosed) {
              add(SpeechtotextEvent.texttospeech(
                assistantid: assistantId,
                sessionid: sessionId,
                avatharname: avatharname,
                question: '',
              ));
            }
          });
        } else if (status == "done" && Platform.isIOS) {
          _processAccumulatedText(assistantId, sessionId, emit, avatharname);
        }
      },
      onError: (error) async {
        if (error.errorMsg.contains('error_no_match')) {
          printColored("No match for speech detected. Please try again.", '33');
          Future.microtask(() {
            if (!isClosed && !_shouldStopCompletely) {
              _isListening = false;
              add(SpeechtotextEvent.texttospeech(
                assistantid: assistantId,
                sessionid: sessionId,
                avatharname: avatharname,
                question: '',
              ));
            }
          });
        } else {
          print(error.errorMsg);
          printColored("Speech recognition error", '32');
          _resetListening(emit);

          await Future.delayed(Duration(milliseconds: 100));

          if (!isClosed && !_shouldStopCompletely) {
            add(SpeechtotextEvent.texttospeech(
              assistantid: assistantId,
              sessionid: sessionId,
              avatharname: avatharname,
              question: '',
            ));
          }
        }
      },
    );

    if (available) {
      _isListening = true;
      _accumulatedText = '';
      printColored('Set _isListening to TRUE, starting speech.listen()', '32');

      // Start a timer to ensure the listening doesn't go on indefinitely
      _continuousListeningTimer = Timer(_maxListeningDuration, () {
        _stopListening(assistantId, sessionId, emit);
      });

      // THIS IS THE KEY PART - UNCOMMENTED AND ACTIVE
      _speech.listen(
        onResult: (result) {
          // Reset silence timer when speech is detected
          _silenceTimer?.cancel();

          // Update accumulated text
          String newText = result.recognizedWords.trim();
          if (newText.isNotEmpty) {
            if (_accumulatedText != newText) {
              _accumulatedText = newText;
              printColored('Accumulated text: $_accumulatedText', '36');
            }

            // Start silence detection timer
            _silenceTimer = Timer(_silenceDuration, () {
              printColored('Silence detected after: $_accumulatedText', '35');
              _processAccumulatedText(
                  assistantId, sessionId, emit, avatharname);
            });
          }
        },
        listenFor: _maxListeningDuration,
        pauseFor: const Duration(seconds: 3),
        localeId: 'en_US',
        partialResults: true,
        cancelOnError: false,
        listenMode: stt.ListenMode.dictation,
      );
    } else {
      printColored('Speech recognition not available', '31');
      emit(const SpeechtotextState.error());
    }
  }

  Future<void> _processAccumulatedText(String? assistantId, String? sessionId,
      Emitter<SpeechtotextState> emit, String? avatharname) async {
    if (_accumulatedText.trim().isNotEmpty) {
      try {
        printColored('Processing text: $_accumulatedText', '34');
        final response = await getmessage(
          asstid: assistantId,
          sessionid: sessionId,
          question: _accumulatedText.trim(),
          imagepath: '',
        );

        // Reset accumulated text before speaking
        _accumulatedText = '';

        // Speak the response
        await _speakText(response.message, avatharname);

        try {
          flutterTts.setCompletionHandler(() {
            printColored("Speech completed handler invoked", '32');
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
      } catch (e) {
        if (!emit.isDone) {
          emit(const SpeechtotextState.error());
        }
      }
    } else {
      printColored('No accumulated text, restarting listening', '32');
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
    printColored('Stopping listening...', '31');
    _silenceTimer?.cancel();
    _continuousListeningTimer?.cancel();
    if (_isListening) {
      await _speech.stop();
    }
    await flutterTts.stop();
    _resetListening(emit);
  }

  Future<void> _resetListening(Emitter<SpeechtotextState> emit) async {
    _isListening = false;
    _accumulatedText = '';
    _silenceTimer?.cancel();
    _continuousListeningTimer?.cancel();
    _shouldStopCompletely = false;
    printColored('Reset listening - _isListening set to FALSE', '33');
  }
}

void printColored(String text, String colorCode) {
  print('\x1B[${colorCode}m$text\x1B[0m');
}
