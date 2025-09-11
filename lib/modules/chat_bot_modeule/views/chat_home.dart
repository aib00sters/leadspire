// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/data/data_center/data_to_classes.dart';
import 'package:wellbeings/data/isar_models/chat_details_model/chat_details.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/addparticiantbloc/bloc/addparticipant_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/bloc/backgroundimagepick_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/chatai_bloc/bloc/chatai_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/get_history_bloc/bloc/gethistory_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/bloc/chatcompletion_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/webrtcspeak_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/services/speechtotextservice.dart';
import 'package:wellbeings/modules/chat_bot_modeule/views/chat_call_page.dart';
import 'package:wellbeings/modules/login_module/widgets/loadingoverlay.dart';
import 'package:wellbeings/utilities/app_functions.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/custom_snackbar.dart';

import '../../../constants/app_colors.dart';
import '../../../utilities/app_styles.dart';

class ChatHomePage extends StatefulWidget {
  String name;
  String imgUrl;
  String assistantid;
  String? sessionid;
  String herotag;

  ChatHomePage({
    super.key,
    required this.name,
    required this.imgUrl,
    required this.assistantid,
    required this.sessionid,
    required this.herotag,
  });

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  LoadingOverlay loadingOverlay = LoadingOverlay();
  final RTCVideoRenderer _remoteRenderer = RTCVideoRenderer();
  final ChatUser _CurrentUser =
      ChatUser(id: '1', firstName: 'USER', lastName: 'ID');

  final ChatUser _gptChatUser =
      ChatUser(id: '2', firstName: "Henna", lastName: '');
  final List<ChatMessage> _messages = [];
  String sq = "";
  String filepath = "";
  bool imageflag = false;
  String imagepath = "";
  bool _isInitialized = false;

  Future<void> _initRenderer() async {
    await _remoteRenderer.initialize();
    setState(() {
      _isInitialized = true;
    });
  }

  pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      print(pickedFile.path);
      setState(() {
        filepath = pickedFile.path;
        // String base64Image = await _encodeImageToBase64(File(pickedFile.path));
        imageflag = true;
      });
      // final chatBloc = BlocProvider.of<ChataiBloc>(context);
      // chatBloc.add(ChataiEvent.startchat(
      //   assistantid: widget.assistantid,
      //   sessionid: widget.sessionid,
      //   question: " ",
      //   imagepath: pickedFile.path,
      //   filepath: '',
      // ));
    } else {
      // User canceled the picker
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    // final DataToChatBotPage? yourArguments =
    //     ModalRoute.of(context)!.settings.arguments as DataToChatBotPage?;

    return WillPopScope(
      onWillPop: () async {
        // Perform your action here
        print('Back button clicked manually');
        cleardata();
        final cleardataBloc = BlocProvider.of<ChataiBloc>(context);
        cleardataBloc.add(const ChataiEvent.clearchat());
        // Return true to allow the back navigation, return false to prevent it
        return true;
      },
      child: MultiBlocListener(
        listeners: [
          BlocListener<GethistoryBloc, GethistoryState>(
            listener: (context, state) {
              // TODO: implement listener
              state.whenOrNull(gethistoryerror: () {
                snackBarWidget("Error in fetching chat history", Icons.warning,
                    Colors.red, Colors.black, Colors.white, 2);
              }, gethistorysuccess: (data) {
                final chathistoryBloc = BlocProvider.of<ChataiBloc>(context);
                chathistoryBloc.add(ChataiEvent.chathistory(data: data));
              });
            },
          ),
          BlocListener<ChataiBloc, ChataiState>(
            listener: (context, state) {
              // TODO: implement listener
              state.whenOrNull(chatSuccess: (data, message) {
                loadingOverlay.hide(context);

                final getchatvideobloc =
                    BlocProvider.of<WebrtcspeakBloc>(context);
                getchatvideobloc.add(WebrtcspeakEvent.talkstream(
                  talk: message,
                  data: data,
                ));
                final chatstart = BlocProvider.of<ChatcompletionBloc>(context);
                chatstart.add(ChatcompletionEvent.chatstart(data: data));
              }, chatError: () {
                loadingOverlay.hide(context);
                snackBarWidget("Error", Icons.warning, Colors.red, Colors.black,
                    Colors.white, 2);
              }, loading: () {
                loadingOverlay.show(context);
              });
            },
          ),
        ],
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: AppColors.appWhite,
            leadingWidth: 98,
            actions: [
              // call Icons & properties
              InkWell(
                onTap: () => Navigator.pushNamed(
                  context,
                  '/doctorslist',
                ),
                child: CircleAvatar(
                  radius: SizeConfig.sizeMultiplier * 4,
                  backgroundColor: AppColors.colorSecondary,
                  child: Icon(
                    FontAwesomeIcons.userDoctor,
                    color: Colors.white,
                    size: SizeConfig.sizeMultiplier * 5,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return EmotionSelectionDialog();
                      },
                    );
                  },
                  icon: const FaIcon(FontAwesomeIcons.faceLaugh)),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Speak_To_Text(
                              name: widget.name,
                              assistantid: widget.assistantid,
                              sessionid: widget.sessionid,
                              imageurl: widget.imgUrl,
                            )),
                  );
                },
                icon: const Icon(Icons.call),
              ),
            ],
            leading: const Row(
              children: [
                BackButton(),
              ],
            ),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
              final availableHeight = constraints.maxHeight - keyboardHeight;
              return Stack(children: [
                Positioned.fill(
                  child: BlocBuilder<BackgroundimagepickBloc,
                      BackgroundimagepickState>(builder: (context, state) {
                    return state.when(initial: (image) {
                      return Image.asset(
                        image,
                        fit: BoxFit.cover,
                      );
                    }, pickedimage: (pickedimage) {
                      return Image.asset(
                        pickedimage,
                        fit: BoxFit.cover,
                      );
                    });
                  }),
                ),
                Column(
                  children: [
                    Container(
                      width: SizeConfig.screenwidth,
                      //height: SizeConfig.screenheight * .5,
                      color: Colors.white,
                      child: Column(
                        children: [
                          BlocBuilder<WebrtcspeakBloc, WebrtcspeakState>(
                            builder: (context, state) {
                              return state.whenOrNull(initial: () {
                                    return ClipOval(
                                      child: Image.network(
                                        widget
                                            .imgUrl, // Replace with your image URL
                                        width: SizeConfig.sizeMultiplier * 45,
                                        height: SizeConfig.sizeMultiplier * 45,
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  }, successstream: (s, d) {
                                    return const Text("nana");
                                  }, sucessnewStream: (peerConnection, f, fr) {
                                    // _remoteRenderer.srcObject = peerConnection[0];
                                    if (!_isInitialized) {
                                      return ClipOval(
                                        child: Image.network(
                                          widget.imgUrl,
                                          width: SizeConfig.sizeMultiplier * 45,
                                          height:
                                              SizeConfig.sizeMultiplier * 45,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    }
                                    _remoteRenderer.srcObject ??=
                                        peerConnection[0];

                                    if (_remoteRenderer.srcObject == null) {
                                      return ClipOval(
                                        child: Image.network(
                                          widget.imgUrl,
                                          width: SizeConfig.sizeMultiplier * 45,
                                          height:
                                              SizeConfig.sizeMultiplier * 45,
                                          fit: BoxFit.cover,
                                        ),
                                      );
                                    } else {
                                      return SizedBox(
                                          width: SizeConfig.screenwidth,
                                          height: availableHeight * 0.5,
                                          child: RTCVideoView(
                                              objectFit: RTCVideoViewObjectFit
                                                  .RTCVideoViewObjectFitContain,
                                              //mirror: false,
                                              _remoteRenderer));
                                    }
                                  }, error: () {
                                    return ClipOval(
                                      child: Image.network(
                                        widget.imgUrl,
                                        width: SizeConfig.sizeMultiplier * 45,
                                        height: SizeConfig.sizeMultiplier * 45,
                                        fit: BoxFit.cover,
                                      ),
                                    );
                                  }) ??
                                  const SizedBox();
                            },
                          ),
                        ],
                      ),
                    ),
                    //Expanded(child:
                    //  BlocBuilder<WebrtcspeakBloc, WebrtcspeakState>(
                    //         builder: (context, state) {
                    //           return state.whenOrNull(
                    //               chatsucess: ( a) {
                    //                 return

                    //               }) ??
                    //               const SizedBox();
                    //         },
                    //       ),
                    // ,)
                    Expanded(
                      child:
                          BlocBuilder<ChatcompletionBloc, ChatcompletionState>(
                        builder: (context, state) {
                          final messages = state.whenOrNull(
                                  chatsuuccess: (messages) => messages) ??
                              [];
                          print(messages);
                          return DashChat(
                            currentUser: _CurrentUser,
                            messageOptions: const MessageOptions(
                              textBeforeMedia: true,
                              currentUserContainerColor: Colors.black,
                              containerColor: Colors.black,
                              textColor: Colors.white,
                            ),
                            inputOptions: InputOptions(
                                alwaysShowSend: true,
                                inputDecoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          pickImage();
                                        },
                                        icon: Icon(Icons.image,
                                            color: imageflag
                                                ? Colors.green
                                                : Colors.grey)))),
                            onSend: (ChatMessage m) {
                              final chatBloc =
                                  BlocProvider.of<ChataiBloc>(context);
                              chatBloc.add(ChataiEvent.startchat(
                                assistantid: widget.assistantid,
                                sessionid: widget.sessionid,
                                question: m.text,
                                imagepath: filepath,
                                filetype: "text",
                              ));
                              setState(() {
                                filepath = "";
                                imageflag =
                                    false; // Reset the filepath after sending the message
                              });
                            },
                            messages: messages,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ]);
            },
          ),
        ),
      ),
    );
  }

  Future<void> history() async {
    final gethistorybloc = BlocProvider.of<GethistoryBloc>(context);
    gethistorybloc.add(GethistoryEvent.gethistory(
        assistantid: widget.assistantid, sessionid: widget.sessionid));
  }

  @override
  void dispose() {
    _remoteRenderer.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _initRenderer();
    final homeDataBloc = BlocProvider.of<WebrtcspeakBloc>(context);
    homeDataBloc.add(WebrtcspeakEvent.callavathar(imageurl: widget.imgUrl));
    final participantselectbloc = BlocProvider.of<AddparticipantBloc>(context);
    final data = Item(
      name: widget.name,
      imageUrl: widget.imgUrl,
      id: "1",
      type: "Bot",
    );
    participantselectbloc.add(AddparticipantEvent.addparticipant(item: data));
    final refereshBloc = BlocProvider.of<AddparticipantBloc>(context);
    refereshBloc.add(const AddparticipantEvent.loadparticiapants());
    history();
  }

  Future<void> speech(ChatMessage m) async {
    // try {
    //   if (ischatstarted) {

    //     setState(
    //       () {

    //       },
    //     );
    //   } else {
    //     final s =
    //         await FirebaseFirestore.instance.collection("messagedata").add(({
    //               "data": [
    //                 ({
    //                   "name": "User",
    //                   "message": m.text,
    //                   "ainame": widget.name,
    //                 })
    //               ],
    //               "session": "Text",
    //               "userid": userid,
    //             }));
    //     final isar = await IsarServices().openDB();

    //     final data = ChatData()..documentId = s.id;
    //     isar.writeTxnSync(() {
    //       isar.chatDatas.putSync(data);
    //     });
    //     print('Data added successfully! Document ID: ${s.id}');
    //     setState(
    //       () {
    //         _messages.insert(0, m);
    //       },
    //     );
    //   }

    //   final responce = await speechtotext(
    //       text1: m.text,
    //       assistantid: widget.assistantid,
    //       threadid: widget.threadid,
    //       baseurl: widget.baseurl);

    //   List<Messages> messagesHistory = _messages.reversed.map(
    //     (m) {
    //       if (m.user == _CurrentUser) {
    //         return Messages(
    //           role: Role.user,
    //           content: m.text,
    //         );
    //       } else {
    //         return Messages(
    //           role: Role.assistant,
    //           content: m.text,
    //         );
    //       }
    //     },
    //   ).toList();

    //   if (responce != "error") {
    //     final data = {
    //       "name": "Ai",
    //       "message": responce,
    //       "ainame": widget.name,
    //     };
    //     final docid = await IsarServices().getChatDocId();
    //     final s = await FirebaseFirestore.instance
    //         .collection("messagedata")
    //         .doc(docid)
    //         .update(({
    //           "data": FieldValue.arrayUnion([data]),
    //           "session": "Text",
    //           "userid": userid,
    //         }));

    //     setState(
    //       () {
    //         _messages.insert(
    //           0,
    //           ChatMessage(
    //               user: _gptChatUser,
    //               createdAt: DateTime.now(),
    //               text: responce),
    //         );
    //       },
    //     );
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //         duration: Duration(seconds: 10),
    //         content: Text("There is a an error")));
    //   }
    // } catch (e) {
    //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    //       duration: Duration(seconds: 10),
    //       content: Text("There is a an error")));
    // }
  }

  Widget EmotionSelectionDialog() {
    List emotions = ["happy", "depressed", "angry", "Moody"];
    List backgroundimages = [
      "assets/images/happy.png",
      "assets/images/depressed.png",
      "assets/images/angry.png",
      "assets/images/moody.png",
    ];
    return SimpleDialog(
      title: const Text('Select Emotion'),
      children: List.generate(emotions.length, (index) {
        return SimpleDialogOption(
          onPressed: () {
            final imageselectBloc =
                BlocProvider.of<BackgroundimagepickBloc>(context);
            imageselectBloc.add(BackgroundimagepickEvent.selectimage(
                selectedimage: backgroundimages[index]));
            Navigator.pop(context);
          },
          child: Container(
            child: Row(children: [
              SizedBox(
                  width: SizeConfig.screenwidth * .4,
                  height: SizeConfig.screenheight * .1,
                  child: Image.asset(backgroundimages[index])),
              Text(emotions[index])
            ]),
          ),
        );
      }),
    );
  }

  cleardata() {
    final clearbloc = BlocProvider.of<AddparticipantBloc>(context);
    clearbloc.add(const AddparticipantEvent.clearparticipant());
  }
}
