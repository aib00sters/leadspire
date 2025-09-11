// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
// import 'package:speech_to_text/speech_to_text.dart' as stt;

import 'package:wellbeings/modules/chat_call_module/blocs/speechtotextbloc/bloc/speechtotext_bloc.dart';
import 'package:wellbeings/modules/new_home_page/pages/new_main_home_page.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/size_config.dart';

class Speak_To_Text extends StatefulWidget {
  String? assistantid;
  String? sessionid;
  String? name;
  String? imageurl;
  Speak_To_Text({
    super.key,
    required this.assistantid,
    required this.sessionid,
    required this.name,
    required this.imageurl,
  });

  @override
  State<Speak_To_Text> createState() => _Speak_To_TextState();
}

class _Speak_To_TextState extends State<Speak_To_Text>
    with SingleTickerProviderStateMixin {
  var collection = FirebaseFirestore.instance.collection('messagedata');
  late AnimationController _animationController;
  // late stt.SpeechToText _speech;
  bool isIconChanged = true;

  final String _text = 'Press the button and start speaking';
  final bool _isListing = false;
  final String _text2 = '';
  String _textcall = 'connecting...';
  final String _textgpt = '';
  String _textnavi = '';
  bool tapbutton = false;
  bool _isListening = false;
  // final List<Messages> _messagesHistory = [];
  FlutterTts flutterTts = FlutterTts();
  bool isFirstAction = true;
  void firstAction() {
    setState(() {
      _isListening = true;
    });
    print("start");
    BlocProvider.of<SpeechtotextBloc>(context).add(
        SpeechtotextEvent.texttospeech(
            assistantid: widget.assistantid,
            sessionid: widget.sessionid,
            question: '',
            avatharname: widget.name));
    // Add your first function logic here
  }

  void secondAction() {
    setState(() {
      _isListening = false;
    });
    BlocProvider.of<SpeechtotextBloc>(context).add(SpeechtotextEvent.stoplisten(
        assistantid: widget.assistantid,
        sessionid: widget.sessionid,
        question: ''));
    // Add your second function logic here
  }

  void handleTap() {
    if (isFirstAction) {
      firstAction(); // Perform the first action
    } else {
      secondAction(); // Perform the second action
    }

    // Toggle the state
    setState(() {
      isFirstAction = !isFirstAction;
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();

    Future.delayed(const Duration(milliseconds: 500), () {
      // First reset the bloc
      final startspeechBloc = BlocProvider.of<SpeechtotextBloc>(context);
      startspeechBloc.add(const SpeechtotextEvent.reset());
    });

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {});
      }
    });
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _textcall = 'connected';
      });
      //_onButtonPressed();
      // final startspeechBloc = BlocProvider.of<SpeechtotextBloc>(context);
      // startspeechBloc.add(SpeechtotextEvent.texttospeech(
      //     question: '',
      //     assistantid: widget.assistantid,
      //     sessionid: widget.sessionid,
      //     avatharname: widget.name));
    });
    Future.delayed(const Duration(seconds: 6), () {
      setState(() {
        _textnavi = 'Tap the button to speak ';
        tapbutton = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // final bloc = BlocProvider.of<SpeechtotextBloc>(context);
        BlocProvider.of<SpeechtotextBloc>(context).add(
          SpeechtotextEvent.stoplisten(
            assistantid: widget.assistantid,
            sessionid: widget.sessionid,
            question: '',
          ),
        );
        await Future.delayed(const Duration(milliseconds: 100));
        // Then close the bloc
        // await bloc.close();
        return true; //
      },
      child: MultiBlocListener(
        listeners: [
          BlocListener<SpeechtotextBloc, SpeechtotextState>(
            listener: (BuildContext context, SpeechtotextState state) {
              state.whenOrNull(
                resetsucess: () {
                  final startspeechBloc =
                      BlocProvider.of<SpeechtotextBloc>(context);
                  startspeechBloc.add(SpeechtotextEvent.speechtotextstart(
                      text: "Hello user,", avatharname: widget.name));
                },
                error: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content:
                          Text("Please retry again by tapping on mic icon ")));
                },
              );
            },
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              widget.name??"",
              style: AppTextStyle.boldTitleStyle(),
            ),
            centerTitle: true,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // button pressed ###############
              GestureDetector(
                onTap: handleTap,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  width: _isListening
                      ? SizeConfig.sizeMultiplier * 12 // Larger when listening
                      : SizeConfig.sizeMultiplier * 11,
                  height: _isListening
                      ? SizeConfig.sizeMultiplier * 12 // Larger when listening
                      : SizeConfig.sizeMultiplier * 11,
                  child: AnimatedBuilder(
                    animation: _animationController,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _isListening
                            ? 1 +
                                0.2 *
                                    sin(_animationController.value *
                                        2 *
                                        pi) // Pulsating effect
                            : 1,
                        child: CircleAvatar(
                          //maxRadius: SizeConfig.sizeMultiplier * 7,
                          backgroundColor: _isListening
                              ? Colors.green[200] // Highlight when listening
                              : Colors.green[400],
                          child: Icon(
                            _isListening ? Icons.mic : Icons.mic_off,
                            size: _isListening
                                ? 30 +
                                    5 *
                                        sin(_animationController.value *
                                            2 *
                                            pi) // Pulsating icon size
                                : 30,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  return _showDialog();
                },
                child: CircleAvatar(
                  maxRadius: SizeConfig.sizeMultiplier * 7,
                  backgroundColor: const Color.fromARGB(255, 255, 224, 198),
                  child: const Icon(Icons.call_end, color: Colors.red),
                ),
              )
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'status :',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: SizeConfig.screenwidth * .02,
                  ),
                  Text(
                    _textcall,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(height: SizeConfig.screenheight * .15),
              Container(
                child: CircleAvatar(
                  radius: SizeConfig.sizeMultiplier * 30,
                  backgroundColor: Colors.white,
                  backgroundImage: widget.name == "William"
                      ? const AssetImage(
                          "assets/images/william.jpg") // Asset image for William
                      : widget.name == "Gavin"
                          ? const AssetImage(
                              "assets/images/Gavin.jpg") // Asset image for Gavin
                          : NetworkImage(
                              "https://myndboosters.com///${widget.imageurl}", // Network image for others
                            ) as ImageProvider,
                ),
              ),
              SizedBox(
                height: SizeConfig.screenheight * .1,
              ),
              Text(
                _textgpt,
                style: AppTextStyle.boldTitleStyle(),
              ),
              tapbutton
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _textnavi,
                          style: AppTextStyle.boldTitleStyle(),
                        ),
                        SizedBox(
                          width: SizeConfig.screenwidth * .01,
                        ),
                        CircleAvatar(
                            maxRadius: SizeConfig.sizeMultiplier * 4,
                            child:
                                Icon(isIconChanged ? Icons.mic : Icons.mic_off))
                      ],
                    )
                  : const SizedBox(),
              SizedBox(
                height: SizeConfig.screenheight * .02,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      //textToSpeech(_text);
                    },
                    child: const SizedBox(
                      height: 50,
                      width: 50,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // _speech.stop();
    // final bloc = BlocProvider.of<SpeechtotextBloc>(context);
    // bloc.close();
    _animationController.dispose();
    super.dispose();
  }

//   void _onButtonPressed() async {
//     if (!_isListing) {
//       bool available = await _speech.initialize(
//         onStatus: (val) async {
//           print('onStatus: $val');

//           if (val == "done") {
//             print("stoppppppp");
//             final responce = await speechtotext(text1: _text);
//             final speechBloc = BlocProvider.of<SpeechtotextBloc>(context);
//             speechBloc.add(SpeechtotextEvent.speechtotextstart(text: _text));
//             // final userid = await IsarServices().getUserId();
//             // final responce = await speechtotext(text1: _text);
//             // final data = {
//             //   "name": "User",
//             //   "message": _text,
//             //   "ainame": widget.name, // this will be saved in TimeStamp Formate
//             // };
//             // final docid = await IsarServices().getChatDocId();
//             // final s = await FirebaseFirestore.instance
//             //     .collection("messagedata")
//             //     .doc(docid)
//             //     .update(({
//             //       "data": FieldValue.arrayUnion([data]),
//             //       "session": "Text",
//             //       "userid": userid,
//             //     }));
//             if (responce != "error") {
//               // final userid = await IsarServices().getUserId();
//               // final responce = await speechtotext(text1: _text);
//               // final data = {
//               //   "name": "Ai",
//               //   "message": _text,
//               //   "ainame":
//               //       widget.name, // this will be saved in TimeStamp Formate
//               // };
//               // final docid = await IsarServices().getChatDocId();
//               // final s = await FirebaseFirestore.instance
//               //     .collection("messagedata")
//               //     .doc(docid)
//               //     .update(({
//               //       "data": FieldValue.arrayUnion([data]),
//               //       "session": "Text",
//               //       "userid": userid,
//               //     }));
//               setState(() {
//                 _text2 = responce;
//                 // textToSpeech(_text2);
//                 print('hello');
//                 // _onButtonPressed();
//               });
//             } else {
//               {
//                 ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//                     duration: Duration(seconds: 10),
//                     content: Text("There is a an error")));
//               }
//             }
//             // _messagesHistory.add(Messages(
//             //   role: Role.user,
//             //   content: _text,
//             // ));
//             // final request = ChatCompleteText(
//             //   model: GptTurbo0301ChatModel(),
//             //   messages: _messagesHistory,
//             //   maxToken: 200,
//             // );
//             // final response = await _openAI.onChatCompletion(
//             //   request: request,
//             // );
//             if (mounted) {
//               setState(() {
//                 isIconChanged = true;
//               });
//             }
// // problem

//             print('object');

// //  here the problem
//             // if (mounted) {

//             // }
//             flutterTts.setCompletionHandler(() {
//               print("Complete");
//               //  _onButtonPressed();
//             });
//           }
//         },
//         onError: (val) => print('onError:$val'),
//       );

//       if (available) {
//         // if (mounted) {
//         //   // setState(() => _isListing = true);
//         // }
//         stt.ListenMode.deviceDefault;
//         _speech.listen(onResult: (val) {
//           if (mounted) {
//             setState(() {
//               _text = val.recognizedWords;
//               if (val.hasConfidenceRating && val.confidence > 0) {}
//             });
//           }
//         });

//         // if (mounted) {
//         //   setState(() => _isListing = false);
//         //   {
//         //     // _speech.stop();
//         //   }
//         // }
//       }
//       // if (mounted) {
//       //   setState(() {
//       //     isIconChanged = !isIconChanged;
//       //     _isListing = false;
//       //   });
//       // }
//       _isListing = false;
//     }
//   }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            content: const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Do you want to end this call',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            actions: [
              Center(
                child: MaterialButton(
                  onPressed: () async {
                    // final bloc = BlocProvider.of<SpeechtotextBloc>(context);
                    BlocProvider.of<SpeechtotextBloc>(context).add(
                      SpeechtotextEvent.stoplisten(
                        assistantid: widget.assistantid,
                        sessionid: widget.sessionid,
                        question: '',
                      ),
                    );
                    await Future.delayed(const Duration(milliseconds: 100));
                    // Then close the bloc
                    // await bloc.close();
                    //AppNavigator.pushReplacementNamed('/home');

                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => NewMainHomePage()),
                      (route) => false, // This removes all previous routes
                    );

                    // );
                  },
                  child: const Text(
                    'End Call',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'No',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
