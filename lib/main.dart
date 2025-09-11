import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellbeings/blocs/notification_listener_bloc/notification_listener_bloc.dart';
import 'package:wellbeings/data/data_center/data_to_classes.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/addparticiantbloc/bloc/addparticipant_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/bloc/backgroundimagepick_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/chatai_bloc/bloc/chatai_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/get_history_bloc/bloc/gethistory_bloc.dart';
import 'package:wellbeings/modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/webrtcspeak_bloc.dart';
import 'package:wellbeings/modules/chat_call_module/blocs/speechtotextbloc/bloc/speechtotext_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/age_selection_bloc/age_selection_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/avatar_generatio_bloc/avathar_generation_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/login_bloc/login_bloc.dart';
import 'package:wellbeings/modules/login_module/blocs/personal_survey_bloc/personal_survey_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/aibotdetails_bloc/bloc/aibotdetails_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/aibotdetailsnew_bloc/bloc/aibotdata_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/appapdate_bloc/bloc/appupdate_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/check_in_bloc/check_in_bloc_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/create_session/bloc/session_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/home_page_bloc/home_page_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/recent_activities_bloc/recent_activities_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/session_bloc/bloc/sessiondata_bloc.dart';
import 'package:wellbeings/modules/new_home_page/blocs/subscribe_topics_bloc/subscribe_topics_bloc.dart';
import 'package:wellbeings/modules/settings_module/bloc/feedback_bloc/bloc/feedback_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_routes.dart';
import 'package:wellbeings/utilities/size_config.dart';

import 'constants/app_colors.dart';
import 'modules/chat_bot_modeule/bloc/webrtcconnectionbloc/bloc/bloc/chatcompletion_bloc.dart';
import 'modules/login_module/blocs/avatar_list_bloc/avatars_list_bloc.dart';
import 'modules/login_module/blocs/questionnaire_bloc/questionnaire_bloc.dart';
import 'modules/login_module/blocs/username_validation_bloc/username_validation_bloc.dart';
import 'modules/profile_module/bloc/profile_bloc/profile_bloc.dart';
import 'utilities/firebase_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  await IsarServices().openDB();
  // await FireBaseServices().setupFirebase(version: 'production');
  await FireBaseServices().setupFirebase(version: 'production');
  FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  User? user = FirebaseAuth.instance.currentUser;

  await IsarServices().cameras();

  runApp(MyApp(
    initialRoute: await IsarServices().isLoggedIn() ? "/home" : "/welcome",
  ));
}

class MyApp extends StatelessWidget {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  final String initialRoute;

  MyApp({super.key, required this.initialRoute});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    _firebaseMessaging.getInitialMessage().then((RemoteMessage? message) {
      if (message != null) {
        // Handle the initial message when the app was closed
        _handleNotificationData(message);
      }
    });

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // Handle foreground messages (when the app is in the foreground)
      _handleNotificationDataforground(message);
      //_showIncomingCallDialog(context, message);
    });

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFF000000),
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: Color(0xFF90C5E7)));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MultiBlocProvider(
          providers: [
            BlocProvider<AibotdetailsBloc>(
              create: (context) => AibotdetailsBloc(),
            ),
            BlocProvider<AibotdataBloc>(
              create: (context) => AibotdataBloc(),
            ),
            BlocProvider<AppupdateBloc>(
              create: (context) => AppupdateBloc(),
            ),
            BlocProvider<CheckInBlocBloc>(
              create: (context) => CheckInBlocBloc(),
            ),
            BlocProvider<SessionBloc>(
              create: (context) => SessionBloc(),
            ),
            BlocProvider<HomePageBloc>(
              create: (context) => HomePageBloc(),
            ),
            BlocProvider<RecentActivitiesBloc>(
              create: (context) => RecentActivitiesBloc(),
            ),
            BlocProvider<SessiondataBloc>(
              create: (context) => SessiondataBloc(),
            ),
            BlocProvider<SubscribeTopicsBloc>(
              create: (context) => SubscribeTopicsBloc(),
            ),
            BlocProvider<QuestionnaireBloc>(
              create: (context) => QuestionnaireBloc(),
            ),
            BlocProvider<AvatarsListBloc>(
              create: (context) => AvatarsListBloc(),
            ),
            BlocProvider<LoginBloc>(
              create: (context) => LoginBloc(),
            ),
            BlocProvider<AgeSelectionBloc>(
              create: (context) => AgeSelectionBloc()
                ..add(const AgeSelectionEvent.fetchAgeGroup()),
            ),
            BlocProvider<PersonalSurveyBloc>(
              create: (context) => PersonalSurveyBloc(),
            ),
            BlocProvider<SpeechtotextBloc>(
              create: (context) => SpeechtotextBloc(),
            ),
            BlocProvider<ProfileBloc>(
              create: (context) => ProfileBloc(),
            ),
            BlocProvider<UsernameValidationBloc>(
              create: (context) => UsernameValidationBloc(),
            ),
            BlocProvider<NotificationListenerBloc>(
              create: (context) => NotificationListenerBloc()
                ..add(const NotificationListenerEvent.listen()),
            ),
            BlocProvider<BackgroundimagepickBloc>(
              create: (context) => BackgroundimagepickBloc(),
            ),
            BlocProvider<AddparticipantBloc>(
              create: (context) => AddparticipantBloc(),
            ),
            BlocProvider<AvatharGenerationBloc>(
              create: (context) => AvatharGenerationBloc(),
            ),
            BlocProvider<FeedbackBloc>(
              create: (context) => FeedbackBloc(),
            ),
            BlocProvider<GethistoryBloc>(
              create: (context) => GethistoryBloc(),
            ),
            BlocProvider<WebrtcspeakBloc>(
              create: (context) => WebrtcspeakBloc(),
            ),
            BlocProvider<ChatcompletionBloc>(
              create: (context) => ChatcompletionBloc(),
            ),
            BlocProvider<ChataiBloc>(
              create: (context) => ChataiBloc(context.read<WebrtcspeakBloc>()),
            ),
          ],
          child: MaterialApp(
            navigatorObservers: [
              FirebaseAnalyticsObserver(analytics: FirebaseAnalytics.instance)
            ],
            debugShowCheckedModeBanner: false,
            title: 'Wellbeings',
            theme: ThemeData(
              primarySwatch: AppColors.primarySwatch,
              fontFamily: GoogleFonts.lato().fontFamily,
            ),
            navigatorKey: AppNavigator.navigatorKey,
            onGenerateRoute: RouteEngine.generateRoute,
            scaffoldMessengerKey: scaffoldMsgKey,
            initialRoute: initialRoute,
          ),
        );
      });
    });
  }

  void _handleNotificationData(RemoteMessage message) {
    if (message.data['key2'] == 'chat') {
      // AppNavigator.pushNamed('/chatList');
    } else if (message.data['key2'] == 'request') {
      AppNavigator.pushNamed('/friendRequest');
    } else if (message.data['key2'].toString().contains("call")) {
      var callparams = message.data['key2'].toString().split('-');
      AppNavigator.pushNamed('/callattendpage',
          arguments:
              DataToCallPage(callparams[1], callparams[2], callparams[3]));
    }
  }

  void _handleNotificationDataforground(RemoteMessage message) {
    print(message);
    if (message.data['key2'] == 'chat') {
      // AppNavigator.pushNamed('/chatList');
    } else if (message.data['key2'] == 'request') {
      AppNavigator.pushNamed('/friendRequest');
    } else if (message.data['type'].toString().contains("call")) {
      var callparams = message.data['type'].toString().split('-');
      AppNavigator.pushNamed('/callattendpage',
          arguments:
              DataToCallPage(callparams[1], callparams[2], callparams[3]));
    }
  }
}
