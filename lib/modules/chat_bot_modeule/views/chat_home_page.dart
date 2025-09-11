// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:dash_chat_2/dash_chat_2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'package:wellbeings/constants/app_assets.dart';
// import 'package:wellbeings/data/data_center/data_to_classes.dart';
// import 'package:wellbeings/data/isar_models/chat_details_model/chat_details.dart';
// import 'package:wellbeings/data/isar_services.dart';
// import 'package:wellbeings/modules/chat_bot_modeule/bloc/addparticiantbloc/bloc/addparticipant_bloc.dart';

// import 'package:wellbeings/modules/chat_bot_modeule/bloc/bloc/backgroundimagepick_bloc.dart';
// import 'package:wellbeings/modules/chat_bot_modeule/services/speechtotextservice.dart';

// import 'package:wellbeings/modules/chat_bot_modeule/views/demo.dart';
// import 'package:wellbeings/utilities/app_functions.dart';
// import 'package:wellbeings/utilities/size_config.dart';

// import '../../../constants/app_colors.dart';
// import '../../../utilities/app_styles.dart';

// class ChatHomePage extends StatefulWidget {
//   String name;
//   String imgUrl;
//   String assistantid;
//   String threadid;
//   String herotag;
//   String baseurl;
//   ChatHomePage({
//     super.key,
//     required this.name,
//     required this.imgUrl,
//     required this.assistantid,
//     required this.threadid,
//     required this.herotag,
//     required this.baseurl,
//   });

//   @override
//   State<ChatHomePage> createState() => _ChatHomePageState();
// }

// class _ChatHomePageState extends State<ChatHomePage> {
//   final ChatUser _CurrentUser =
//       ChatUser(id: '1', firstName: 'USER', lastName: 'ID');

//   final ChatUser _gptChatUser =
//       ChatUser(id: '2', firstName: "Henna", lastName: '');
//   final List<ChatMessage> _messages = [];
//   String sq = "";
//   @override
//   Widget build(BuildContext context) {
//     // final DataToChatBotPage? yourArguments =
//     //     ModalRoute.of(context)!.settings.arguments as DataToChatBotPage?;

//     return WillPopScope(
//       onWillPop: () async {
//         // Perform your action here
//         print('Back button clicked manually');
//         cleardata();
//         // Return true to allow the back navigation, return false to prevent it
//         return true;
//       },
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: AppColors.appWhite,
//           leadingWidth: 98,
//           actions: [
//             // call Icons & properties
//             InkWell(
//               onTap: () => Navigator.pushNamed(
//                 context,
//                 '/doctorslist',
//                 //'/doctotsmainpage'
//               ),
//               child: CircleAvatar(
//                 radius: SizeConfig.sizeMultiplier * 4,
//                 backgroundColor: AppColors.colorSecondary,
//                 child: Icon(
//                   FontAwesomeIcons.userDoctor,
//                   color: Colors.white,
//                   size: SizeConfig.sizeMultiplier * 5,
//                 ),
//               ),
//             ),
//             IconButton(
//                 onPressed: () {
//                   showDialog(
//                     context: context,
//                     builder: (BuildContext context) {
//                       return EmotionSelectionDialog();
//                     },
//                   );
//                 },
//                 icon: const FaIcon(FontAwesomeIcons.faceLaugh)),
//             IconButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => Speak_To_Text(
//                             name: widget.name,
//                             imgUrl: widget.imgUrl,
//                           )),
//                 );
//               },
//               icon: const Icon(Icons.call),
//             ),
//           ],
//           leading: const Row(
//             children: [
//               BackButton(),
//               // Hero(
//               //   tag: widget.herotag,
//               //   child: Card(
//               //     margin: EdgeInsets.zero,
//               //     clipBehavior: Clip.hardEdge,
//               //     shape: const StadiumBorder(),
//               //     child: Image.network(widget.imgUrl),

//               //     // Image.asset(
//               //     //   widget.imgUrl,
//               //     //   height: 40,
//               //     //   width: 40,
//               //     //   fit: BoxFit.cover,
//               //     // ),
//               //   ),
//               // )
//             ],
//           ),
//           // title: Row(
//           //   crossAxisAlignment: CrossAxisAlignment.center,
//           //   children: [
//           //     SizedBox(
//           //       height: 40,
//           //       child: Center(
//           //         child: Text(
//           //           widget.name,
//           //           style: AppTextStyle.boldTitleStyle(),
//           //         ),
//           //       ),
//           //     ),
//           //   ],
//           // ),
//         ),
//         body: Stack(children: [
//           Positioned.fill(
//             child:
//                 BlocBuilder<BackgroundimagepickBloc, BackgroundimagepickState>(
//                     builder: (context, state) {
//               return state.when(initial: (image) {
//                 return Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                 );
//               }, pickedimage: (pickedimage) {
//                 return Image.asset(
//                   pickedimage,
//                   fit: BoxFit.cover,
//                 );
//               });
//             }),
//           ),
//           Column(
//             children: [
//               Container(
//                 width: SizeConfig.screenwidth,
//                 height: SizeConfig.screenheight * .25,
//                 color: Colors.white,
//                 child: BlocBuilder<AddparticipantBloc, AddparticipantState>(
//                     builder: (context, state) {
//                   return state.when(initial: () {
//                     return const SizedBox(
//                       child: Text("d"),
//                     );
//                   }, newparticipant: (list) {
//                     return const SizedBox(
//                       child: Text("k"),
//                     );
//                   }, listloading: (list) {
//                     print("The length of the newparticipant=${list.length}");
//                     return SizedBox(
//                       width: SizeConfig.screenwidth,
//                       height: SizeConfig.screenheight * .08,
//                       child: ListView.builder(
//                           padding: EdgeInsets.only(
//                             left: list.length == 1
//                                 ? (SizeConfig.screenwidth -
//                                         (SizeConfig.sizeMultiplier * 40)) /
//                                     2
//                                 : (SizeConfig.screenwidth -
//                                         (SizeConfig.sizeMultiplier * 90)) /
//                                     2, // Set a different padding value if list length is not 1
//                           ),
//                           shrinkWrap: true,
//                           itemCount: list.length,
//                           scrollDirection: Axis.horizontal,
//                           itemBuilder: (context, index) {
//                             return Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 10),
//                               child: Container(
//                                 child: Column(
//                                   children: [
//                                     ClipOval(
//                                       child: Image.network(
//                                         list[index]
//                                             .imageUrl, // Replace with your image URL
//                                         width: SizeConfig.sizeMultiplier * 35,
//                                         height: SizeConfig.sizeMultiplier * 35,
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                     Text(
//                                       list[index].name,
//                                       style: AppTextStyle.boldTitleStyle(),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           }),
//                     );
//                   }, sucess: () {
//                     return const SizedBox(
//                       child: Text("j"),
//                     );
//                   });
//                 }),
//               ),
//               Expanded(
//                 child: DashChat(
//                   currentUser: _CurrentUser,
//                   messageOptions: const MessageOptions(
//                     currentUserContainerColor: Colors.black,
//                     containerColor: Colors.black,
//                     textColor: Colors.white,
//                   ),
//                   onSend: (ChatMessage m) {
//                     // getChatResponse(m);
//                     speech(m);
//                     // final profileBloc = BlocProvider.of<ChatpageBloc>(context);
//                     // profileBloc.add(ChatpageEvent.chat(text: m));
//                   },
//                   messages: _messages,
//                 ),
//               ),
//             ],
//           ),
//         ]),
//       ),
//     );
//   }

//   Future<void> history() async {
//     var collection = FirebaseFirestore.instance.collection('messagedata');
//     final docid = await IsarServices().getChatDocId();
//     var querySnapshot = await collection.doc(docid).get();
//     if (querySnapshot.exists) {
//       // if (querySnapshot.data()?['name'] == widget.name) {
//       var data = querySnapshot.data()?['data'];
//       for (var item in data) {
//         // if (item["ainame"] == widget.name) {
//         //   setState(() {
//         //     _messages.insert(
//         //         0,
//         //         ChatMessage(
//         //             user: ChatUser(id: item['name'] == "User" ? "1" : "2"),
//         //             createdAt: DateTime.now(),
//         //             text: item['message']));
//         //   });
//         // }

//         //print('Name: ${item['name']}, Message: ${item['message']}');
//       }
//       // }
//     }
//     print(querySnapshot.data()!.entries.first.key);
//     List<Map<String, dynamic>> dataList = [];

//     // for (var queryDocumentSnapshot in querySnapshot.datas) {
//     //   Map<String, dynamic> data = queryDocumentSnapshot.data();
//     //   dataList.add(data);
//     // }

//     List<Messages> messagesHistory = dataList.reversed.map(
//       (m) {
//         if (dataList.first["name"] == "User") {
//           return Messages(
//             role: Role.user,
//             content: dataList.first["message"],
//           );
//         } else {
//           return Messages(
//             role: Role.assistant,
//             content: dataList.first["message"],
//           );
//         }
//       },
//     ).toList();
//     print(messagesHistory.length);
//   }

//   // final _openAI = OpenAI.instance.build(
//   //   token: AppAssets.OPENAI_API_KEY,
//   //   baseOption: HttpSetup(
//   //     receiveTimeout: const Duration(
//   //       seconds: 5,
//   //     ),
//   //   ),
//   //   enableLog: true,
//   // );
//   @override
//   void initState() {
//     // TODO: implement initState

//     // final data = Item(name: "", imageUrl: "", type: "", id: "");
//     // refeshbloc.add(AddparticipantEvent.addparticipant(item: data));
//     final participantselectbloc = BlocProvider.of<AddparticipantBloc>(context);

//     final data = Item(
//       name: widget.name,
//       imageUrl: widget.imgUrl,
//       id: "1",
//       type: "Bot",
//     );
//     participantselectbloc.add(AddparticipantEvent.addparticipant(item: data));
//     final refereshBloc = BlocProvider.of<AddparticipantBloc>(context);
//     refereshBloc.add(const AddparticipantEvent.loadparticiapants());

//     history();
//   }

//   Future<void> speech(ChatMessage m) async {
//     final ischatstarted = await IsarServices().isChatStarted();
//     final userid = await IsarServices().getUserId();
//     try {
//       if (ischatstarted) {
//         final data = {
//           "name": "User",
//           "message": m.text,
//           "ainame": widget.name, // this will be saved in TimeStamp Formate
//         };
//         final docid = await IsarServices().getChatDocId();
//         final s = await FirebaseFirestore.instance
//             .collection("messagedata")
//             .doc(docid)
//             .update(({
//               "data": FieldValue.arrayUnion([data]),
//               "session": "Text",
//               "userid": userid,
//             }));
//         setState(
//           () {
//             _messages.insert(0, m);
//           },
//         );
//       } else {
//         final s =
//             await FirebaseFirestore.instance.collection("messagedata").add(({
//                   "data": [
//                     ({
//                       "name": "User",
//                       "message": m.text,
//                       "ainame": widget.name,
//                     })
//                   ],
//                   "session": "Text",
//                   "userid": userid,
//                 }));
//         final isar = await IsarServices().openDB();

//         final data = ChatData()..documentId = s.id;
//         isar.writeTxnSync(() {
//           isar.chatDatas.putSync(data);
//         });
//         print('Data added successfully! Document ID: ${s.id}');
//         setState(
//           () {
//             _messages.insert(0, m);
//           },
//         );
//       }

//       final responce = await speechtotext(
//           text1: m.text,
//           assistantid: widget.assistantid,
//           threadid: widget.threadid,
//           baseurl: widget.baseurl);

//       List<Messages> messagesHistory = _messages.reversed.map(
//         (m) {
//           if (m.user == _CurrentUser) {
//             return Messages(
//               role: Role.user,
//               content: m.text,
//             );
//           } else {
//             return Messages(
//               role: Role.assistant,
//               content: m.text,
//             );
//           }
//         },
//       ).toList();

//       if (responce != "error") {
//         // final data = {
//         //   "loggedScore": 20,
//         //   "createdAt": DateTime.now(), // this will be saved in TimeStamp Formate
//         // };
//         final data = {
//           "name": "Ai",
//           "message": responce,
//           "ainame": widget.name, // this will be saved in TimeStamp Formate
//         };
//         final docid = await IsarServices().getChatDocId();
//         final s = await FirebaseFirestore.instance
//             .collection("messagedata")
//             .doc(docid)
//             .update(({
//               "data": FieldValue.arrayUnion([data]),
//               "session": "Text",
//               "userid": userid,
//             }));
//         // final s = await FirebaseFirestore.instance
//         //     .collection("messagedata")
//         //     .add(({"name": "ai", "message": responce}));
//         //print('Data added successfully! Document ID: ${s.id}');
//         setState(
//           () {
//             _messages.insert(
//               0,
//               ChatMessage(
//                   user: _gptChatUser,
//                   createdAt: DateTime.now(),
//                   text: responce),
//             );
//           },
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//             duration: Duration(seconds: 10),
//             content: Text("There is a an error")));
//       }
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//           duration: Duration(seconds: 10),
//           content: Text("There is a an error")));
//     }
//   }

//   Widget EmotionSelectionDialog() {
//     List emotions = ["happy", "depressed", "angry", "Moody"];
//     List backgroundimages = [
//       "assets/images/happy.png",
//       "assets/images/depressed.png",
//       "assets/images/angry.png",
//       "assets/images/moody.png",
//     ];
//     return SimpleDialog(
//       title: const Text('Select Emotion'),
//       children: List.generate(emotions.length, (index) {
//         return SimpleDialogOption(
//           onPressed: () {
//             final imageselectBloc =
//                 BlocProvider.of<BackgroundimagepickBloc>(context);
//             imageselectBloc.add(BackgroundimagepickEvent.selectimage(
//                 selectedimage: backgroundimages[index]));
//             Navigator.pop(context);
//           },
//           child: Container(
//             child: Row(children: [
//               SizedBox(
//                   width: SizeConfig.screenwidth * .4,
//                   height: SizeConfig.screenheight * .1,
//                   child: Image.asset(backgroundimages[index])),
//               Text(emotions[index])
//             ]),
//           ),
//         );
//       }),
//     );
//   }

//   cleardata() {
//     final clearbloc = BlocProvider.of<AddparticipantBloc>(context);
//     clearbloc.add(const AddparticipantEvent.clearparticipant());
//   }
//   //  final FirebaseStorage _storage = FirebaseStorage.instance;

//   //   Future<Uri> uploadPic() async {

//   //   //Get the file from the image picker and store it
//   //   File image = await ImagePicker.pickImage(source: ImageSource.gallery);

//   //   //Create a reference to the location you want to upload to in firebase
//   //   StorageReference reference = _storage.ref().child("images/");

//   //   //Upload the file to firebase
//   //   StorageUploadTask uploadTask = reference.putFile(file);

//   //   // Waits till the file is uploaded then stores the download url
//   //   Uri location = (await uploadTask.future).downloadUrl;

//   //   //returns the download url
//   //   return location;
//   //  }
// }
