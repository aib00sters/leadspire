import 'package:flutter/material.dart';
import 'package:wellbeings/modules/login_module/views/age_select_page.dart';
import 'package:wellbeings/modules/login_module/views/avatar_genrate_page.dart';
import 'package:wellbeings/modules/login_module/views/avatar_selection_page.dart';
import 'package:wellbeings/modules/login_module/views/coupon_page.dart';
import 'package:wellbeings/modules/login_module/views/enter_name.dart';
import 'package:wellbeings/modules/login_module/views/otp_page.dart';
import 'package:wellbeings/modules/login_module/views/phone_page.dart';
import 'package:wellbeings/modules/login_module/views/select_topics.dart';
import 'package:wellbeings/modules/login_module/views/sign_up_page.dart';
import 'package:wellbeings/modules/login_module/views/personal_survey_page.dart';
import 'package:wellbeings/modules/login_module/views/questionnaire.dart';
import 'package:wellbeings/modules/login_module/views/select_gender_page.dart';
import 'package:wellbeings/modules/login_module/views/signinpage.dart';
import 'package:wellbeings/modules/login_module/views/welcome_page.dart';
import 'package:wellbeings/modules/new_home_page/pages/new_chat_page.dart';
import 'package:wellbeings/modules/new_home_page/pages/new_main_home_page.dart';
import 'package:wellbeings/modules/settings_module/views/settings_page.dart';
import '../data/data_center/data_to_classes.dart';
import '../modules/profile_module/views/profile_page.dart';

class RouteEngine {
  static Object? args;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    args = settings.arguments;
    switch (settings.name) {
      case '/welcome':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/welcome"),
          maintainState: true,
          builder: (_) => const WelcomePage(),
        );
      case '/home':
        return MaterialPageRoute(
            settings: const RouteSettings(name: "/home"),
            maintainState: true,
            builder: (_) => const NewMainHomePage()
            //const HomePage(),
            );
      case '/avatarSelection':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/avatarSelection"),
          maintainState: true,
          builder: (_) => const AvatarSelectionPage(),
        );
      case '/questionnaire':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/questionnaire"),
          maintainState: true,
          builder: (_) => const QuestionnairePage(),
        );

      case '/paintprojetspage':
      case '/profilepage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/profilepage"),
          maintainState: true,
          builder: (_) => const ProfilePage(),
        );
      case '/settings':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/settings"),
          maintainState: true,
          builder: (_) => const SettingsPage(),
        );

      // case '/voiceRecorderPage':
      //   return MaterialPageRoute(
      //     settings: const RouteSettings(name: "/voiceRecorderPage"),
      //     maintainState: true,
      //     builder: (_) => const VoiceRecorderPage(),
      //   );
      case '/enterName':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/enterName"),
          maintainState: true,
          builder: (_) => const EnterNamePage(),
        );
      case '/selectGender':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/selectGender"),
          maintainState: true,
          builder: (_) => const SelectGenderPage(),
        );

      case '/ageSelect':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/ageSelect"),
          maintainState: true,
          builder: (_) => const AgeSelectPage(),
        );
      case '/avatarGeneration':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/avatarGeneration"),
          maintainState: true,
          builder: (_) => const AvatarGenerationPage(),
        );
      case '/personalDetails':
        return MaterialPageRoute(
          settings: const RouteSettings(name: "/personalDetails"),
          maintainState: true,
          builder: (_) => const PersonalSurveyPage(),
        );
      case '/SigninPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/SigninPage'),
          maintainState: true,
          builder: (_) => const SignInPage(),
        );
      case '/SignUpPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/SignUpPage'),
          maintainState: true,
          builder: (_) => const SignUpPage(),
        );
      case '/chatbothome':
        DataToChatBotPage argument = args as DataToChatBotPage;
        return MaterialPageRoute(
            settings: const RouteSettings(name: "/chatbothome"),
            maintainState: true,
            builder: (_) => ChatNewPage(
                  name: argument.assstname,
                  imgUrl: argument.imgUrl,
                  assistantid: argument.assistantid,
                  sessionid: argument.sessioid,
                  herotag: argument.herotag,
                  video: argument.video,
                  iatalking: argument.istalking,
                ));

      case '/phonePage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/phonePage'),
          maintainState: true,
          builder: (_) => const PhoneScreen(),
        );
      case '/otpPage':
        String argument3 = args as String;
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/otpPage'),
          maintainState: true,
          builder: (_) => OtpPage(
            verificationId: argument3,
          ),
        );
      case '/couponPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/couponPage'),
          maintainState: true,
          builder: (_) => const CouponPage(),
        );
      case '/topicPage':
        return MaterialPageRoute(
          settings: const RouteSettings(name: '/topicPage'),
          maintainState: true,
          builder: (_) => const SelectTopicPage(),
        );
      default:
        return null;
    }
  }
}
