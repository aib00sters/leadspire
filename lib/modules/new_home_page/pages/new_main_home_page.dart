import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/new_home_page/blocs/aibotdetailsnew_bloc/bloc/aibotdata_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/appapdate_bloc/bloc/appupdate_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/create_session/bloc/session_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/session_bloc/bloc/sessiondata_bloc.dart';
import 'package:wellbeings/modules/new_home_page/models/sessions_model.dart';
import 'package:wellbeings/modules/new_home_page/pages/new_chat_page.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/firebaseh.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/appupdate_widget.dart';
import 'package:wellbeings/widgets/custom_dialogs.dart';
import 'package:wellbeings/widgets/custom_snackbar.dart';
import '../blocs/aibotdetails_bloc/bloc/aibotdetails_bloc.dart';
import '../widgets/homepage_baground_setter.dart';

class NewMainHomePage extends StatefulWidget {
  const NewMainHomePage({super.key});

  @override
  State<NewMainHomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NewMainHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GoogleSignIn googleSignIn = GoogleSignIn.instance;
  final FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  Future<void> _showSelectableTilesBottomSheet({
    required BuildContext context,
    List<SessionDetail>? data,
    String? assistantid,
    String? assistantname,
    String? image,
    String? heroindex,
    String? video,
    bool? istalking,
  }) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 300.0, // Set a height for the bottom sheet
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  final createnewsession =
                      BlocProvider.of<SessionBloc>(context);
                  createnewsession.add(SessionEvent.createnewsession(
                      assstId: assistantid,
                      name: assistantname,
                      image: image,
                      herowidgetstring: heroindex,
                      video: video,
                      isTalking: istalking));
                },
                child: ListTile(
                  tileColor: AppColors.statusBarColor,
                  title: Text(
                    'Create a new Session',
                    style: AppTextStyle.largeTitleStyle().copyWith(
                      fontSize: SizeConfig.textMultiplier * 3,
                      fontWeight: FontWeight.bold, // Make the username bold
                    ),
                  ),
                ),
              ),
              ListTile(
                tileColor: AppColors.appLightBlue,
                title: Text(
                  'Select a session from the previous sessions.',
                  style: AppTextStyle.largeTitleStyle().copyWith(
                    fontSize: SizeConfig.textMultiplier * 3,
                    fontWeight: FontWeight.bold, // Make the username bold
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount:
                      data?.length, // Replace with the actual number of items
                  itemBuilder: (BuildContext context, int index) {
                    final session = data?[index];
                    return ListTile(
                      title: Text('session${session?.sessionId}'),
                      onTap: () {
                        // Handle tile selection
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatNewPage(
                                  name: assistantname,
                                  imgUrl: image,
                                  assistantid: assistantid,
                                  sessionid: session?.sessionId,
                                  herotag: heroindex,
                                  video: video,
                                  iatalking: istalking,
                                )));
                        // AppNavigator.pushNamed("/chatbothome",
                        //     arguments: DataToChatBotPage(
                        //         assistantname,
                        //         image,
                        //         session.sessionId,
                        //         assistantid,
                        //         heroindex,
                        //         video,
                        //         istalking));

                        print('Selected Option $index');
                        // Close the bottom sheet
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppupdateBloc, AppupdateState>(listener: (context, state) {
          state.whenOrNull(upadteavailable: (link) {
            updateDialog(context, link);
          });
        }),
        BlocListener<SessionBloc, SessionState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(
              newsessionsuccess: (sessionid, name, image, heroid, assistantid,
                  video, istalking) {
                // Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatNewPage(
                          name: name,
                          imgUrl: image,
                          assistantid: assistantid,
                          sessionid: sessionid,
                          herotag: heroid,
                          video: video,
                          iatalking: istalking,
                        )));
                // AppNavigator.pushNamed("/chatbothome",
                //     arguments: DataToChatBotPage(name, image, sessionid,
                //         assistantid, heroid, video, istalking));
              },
            );
          },
        ),
        BlocListener<SessiondataBloc, SessiondataState>(
          listener: (context, state) {
            // TODO: implement listener
            state.whenOrNull(getsessionssuccess: (data, assistantid,
                assistantname, image, heroindex, video, istalking) {
              analytics.logEvent(
                name: 'avathar_clicked',
                parameters: {
                  'avathar ': assistantname.toString(),
                  'assistantid': assistantid.toString(),
                },
              );
              _showSelectableTilesBottomSheet(
                  context: context,
                  data: data,
                  assistantid: assistantid,
                  assistantname: assistantname,
                  image: image,
                  heroindex: heroindex,
                  video: video,
                  istalking: istalking);
            }, sessionsempty: (assistantid, assistantname, image, heroindex,
                video, istalking) {
              final createnewsession = BlocProvider.of<SessionBloc>(context);
              createnewsession.add(SessionEvent.createnewsession(
                  assstId: assistantid,
                  name: assistantname,
                  image: image,
                  herowidgetstring: heroindex,
                  video: video,
                  isTalking: istalking));
            }, error: () {
              snackBarWidget("Error", Icons.warning, Colors.red, Colors.black,
                  Colors.white, 2);
            });
          },
        )
      ],
      child: SafeArea(
          child: Scaffold(
              key: _scaffoldKey,
              drawer: Drawer(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    DrawerHeader(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(77, 185, 216, 0.5),
                      ),
                      child: BlocBuilder<HomePageBloc, HomePageState>(
                        builder: (context, state) {
                          return state.whenOrNull(
                                success: (homePageModel, userName, profilePic,
                                    data) {
                                  return Column(
                                    children: [
                                      SizedBox(
                                        width: SizeConfig.widthMultiplier * 20,
                                        child: ClipOval(
                                          child: CachedNetworkImage(
                                            imageUrl: profilePic,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: SizeConfig.screenheight * .01,
                                      ),
                                      Text(
                                        userName,
                                        style: AppTextStyle.largeTitleStyle(
                                                color: AppColors.appWhite)
                                            .copyWith(
                                          fontSize:
                                              SizeConfig.textMultiplier * 6,
                                          fontWeight: FontWeight
                                              .bold, // Make the username bold
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ) ??
                              const SizedBox();
                        },
                      ),
                      // Text(
                      //   'Menu',
                      //   style: TextStyle(
                      //     color: Colors.white,
                      //     fontSize: 24,
                      //   ),
                      // ),
                    ),
                    Column(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.logout),
                          title: const Text('Logout'),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return CustomDialogWidget(
                                  title: "Logout!",
                                  content: "Are you sure to want to logout ?",
                                  leftButton: CustomButton(
                                    text: "Logout",
                                    onTap: () async {
                                      FireBaseServices().signOut();
                                      await IsarServices()
                                          .logOutUser()
                                          .then((value) {
                                        Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          '/welcome',
                                          (route) => false,
                                        );
                                      });
                                    },
                                  ),
                                  rightButton: CustomButton(
                                    text: "Cancel",
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.delete),
                          title: const Text('Delete Account'),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return CustomDialogWidget(
                                  title: "Delete",
                                  content:
                                      "Are you sure to want to Deleate account ?",
                                  leftButton: CustomButton(
                                    text: "Yes",
                                    onTap: () async {
                                      FireBaseServices().deleteUser();
                                      // FireBaseServices().signOut();
                                      await IsarServices()
                                          .logOutUser()
                                          .then((value) {
                                        Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          '/welcome',
                                          (route) => false,
                                        );
                                      });
                                    },
                                  ),
                                  rightButton: CustomButton(
                                    text: "No",
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        // ListTile(
                        //   leading: Icon(Icons.message),
                        //   title: const Text('Lets chat'),
                        //   onTap: () {
                        //     AppNavigator.pushNamed('/chatList');
                        //   },
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              body: homepaegeBagroundWidget(
                child: Column(
                  children: [
                    SizedBox(
                      height: SizeConfig.screenheight * .02,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: SizeConfig.screenwidth * .8,
                        ),
                        GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          child: CircleAvatar(
                            radius: SizeConfig.widthMultiplier * 5,
                            backgroundColor:
                                const Color.fromRGBO(77, 185, 216, 0.5),
                            child: Icon(
                              size: SizeConfig.widthMultiplier * 4.8,
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: SizeConfig.screenwidth * .08,
                        ),
                        BlocBuilder<HomePageBloc, HomePageState>(
                          builder: (context, state) {
                            return state.whenOrNull(
                                  success: (homePageModel, userName, profilePic,
                                      data) {
                                    return RichText(
                                      text: TextSpan(
                                        text: 'Hi ', // Regular text
                                        style: AppTextStyle.largeTitleStyle(
                                            fontSize:
                                                SizeConfig.textMultiplier *
                                                    8), // Default text style
                                        children: [
                                          TextSpan(
                                            text: userName, // User's name
                                            style:
                                                AppTextStyle.largeTitleStyle()
                                                    .copyWith(
                                              fontSize:
                                                  SizeConfig.textMultiplier * 8,
                                              fontWeight: FontWeight
                                                  .bold, // Make the username bold
                                            ),
                                          ),
                                        ],
                                      ),
                                    );

                                    // return Text(
                                    //   "hi $userName",
                                    //   style: TextStyle(
                                    //       fontSize:
                                    //           SizeConfig.textMultiplier *
                                    //               6,
                                    //       color: Colors.black),
                                    // );
                                  },
                                ) ??
                                const SizedBox();
                          },
                        ),
                        SizedBox(
                          width: SizeConfig.screenwidth * .35,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: SizeConfig.screenwidth * .08,
                        ),
                        // Text(
                        //   "How can i assist you right now?",
                        //   style: AppTextStyle.largeTitleStyle(
                        //       fontSize: SizeConfig.textMultiplier * 4),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.screenheight * .07,
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: AnimatedTextKit(
                    //     animatedTexts: [
                    //       TypewriterAnimatedText(
                    //         'Take a deep breath—you’re in a safe place to unwind, reflect, and recharge. Tap on avathar to chat ',
                    //         textStyle: AppTextStyle.titleTextStyle(),
                    //         speed: const Duration(milliseconds: 100),
                    //       ),
                    //     ],
                    //     isRepeatingAnimation: false,
                    //     pause: const Duration(milliseconds: 1000),
                    //     displayFullTextOnTap: true,
                    //     stopPauseOnTap: true,
                    //   ),
                    // ),
                    // SizedBox(
                    //   height: SizeConfig.screenheight * .02,
                    // ),
                    Expanded(
                      child: BlocBuilder<AibotdataBloc, AibotdataState>(
                        builder: (context, state) {
                          return state.whenOrNull(
                                aibotdataerror: () {
                                  // return const Center(child: Text("Error"));
                                  return Center(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Welcome to My App",
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 8),
                                        Text(
                                          "Your all-in-one solution for everyday needs.",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                aibotdatasuccess: (model, imageslist) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: GridView.builder(
                                      padding: const EdgeInsets.all(8),
                                      itemCount: model.sessions!.length,
                                      gridDelegate:
                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2, // 3 items per row
                                        crossAxisSpacing: 10,
                                        mainAxisSpacing: 10,
                                        childAspectRatio: 1.0,
                                      ),
                                      // const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                                      itemBuilder: (context, index) {
                                        return InkWell(
                                          child: Container(
                                            width: SizeConfig
                                                .screenwidth, // Adjust width as needed
                                            // Adjust height as needed
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(20),
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20)),
                                              image: DecorationImage(
                                                image: model
                                                            .sessions![index]
                                                            .uaMap!
                                                            .assistant!
                                                            .name ==
                                                        "William"
                                                    ? const AssetImage(
                                                        "assets/images/william.jpg") // Asset image for William
                                                    : model
                                                                .sessions![
                                                                    index]
                                                                .uaMap!
                                                                .assistant!
                                                                .name ==
                                                            "Gavin"
                                                        ? const AssetImage(
                                                            "assets/images/Gavin.jpg") // Asset image for Gavin
                                                        : NetworkImage(
                                                            "https://myndboosters.com///${model.sessions![index].uaMap!.assistant!.avatar!.avatarImg!}",
                                                          ) as ImageProvider,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                // Gradient overlay
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(20),
                                                      topLeft:
                                                          Radius.circular(20),
                                                      bottomLeft:
                                                          Radius.circular(20),
                                                      bottomRight:
                                                          Radius.circular(20),
                                                    ),
                                                    gradient: LinearGradient(
                                                      begin: Alignment
                                                          .bottomCenter,
                                                      end: Alignment.topCenter,
                                                      colors: [
                                                        Color.fromRGBO(
                                                            77, 185, 216, 0.5),
                                                        Colors.transparent,
                                                      ],
                                                    ),
                                                  ),
                                                ),

                                                Positioned(
                                                  bottom:
                                                      SizeConfig.screenheight *
                                                          .04,
                                                  left: SizeConfig.screenwidth *
                                                      .03,
                                                  child: Text(
                                                    model
                                                        .sessions![index]
                                                        .uaMap!
                                                        .assistant!
                                                        .name!,
                                                    //model.assistants[index].name,
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: SizeConfig
                                                              .textMultiplier *
                                                          5,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  bottom:
                                                      SizeConfig.screenheight *
                                                          .011,
                                                  left: SizeConfig.screenwidth *
                                                      .02,
                                                  child: Text(
                                                    model
                                                        .sessions![index]
                                                        .uaMap!
                                                        .assistant!
                                                        .expertIn!,
                                                    //model.assistants[index].desc,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color:
                                                          const Color.fromARGB(
                                                              255,
                                                              241,
                                                              244,
                                                              247),
                                                      fontSize: SizeConfig
                                                              .textMultiplier *
                                                          2.5,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            final getsessions = BlocProvider.of<
                                                SessiondataBloc>(context);
                                            getsessions.add(
                                                SessiondataEvent.getsessions(
                                                    assistantid: model
                                                        .sessions![index]
                                                        .uaMap!
                                                        .assistant!
                                                        .code!,
                                                    assistantname: model
                                                        .sessions![index]
                                                        .uaMap!
                                                        .assistant!
                                                        .name!,
                                                    // model.assistants[index].name,
                                                    image: model
                                                        .sessions![index]
                                                        .uaMap!
                                                        .assistant!
                                                        .avatar!
                                                        .avatarImg!,
                                                    heroindex:
                                                        "card_//${model.sessions![index].uaMap!.assistant!.name}",
                                                    avatar_video: model
                                                        .sessions![index]
                                                        .uaMap!
                                                        .assistant!
                                                        .avatar!
                                                        .avatarVideo,
                                                    istalking: model
                                                        .sessions![index]
                                                        .uaMap!
                                                        .assistant!
                                                        .isTalking!
                                                    //"card_//${model.assistants[index].name}"
                                                    ));
                                          },
                                        );

                                        //return null;
                                      },
                                    ),
                                  );
                                },
                              ) ??
                              const SizedBox();
                        },
                      ),
                    )
                  ],
                ),
              ))),
    );
  }

  @override
  void initState() {
    final aibotdetailsbloc = BlocProvider.of<AibotdataBloc>(context);
    aibotdetailsbloc.add(const AibotdataEvent.getdata());
    final homepagebloc = BlocProvider.of<HomePageBloc>(context);
    homepagebloc.add(const HomePageEvent.fetchHomeData());
    final aibotbloc = BlocProvider.of<AibotdetailsBloc>(context);
    aibotbloc.add(const AibotdetailsEvent.fetchdata());
    final appupdatebloc = BlocProvider.of<AppupdateBloc>(context);
    appupdatebloc.add(const AppupdateEvent.checkupdate());
    super.initState();
  }
}
