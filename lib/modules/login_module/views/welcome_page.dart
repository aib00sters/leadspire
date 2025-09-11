import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/data/isar_services.dart';
import 'package:wellbeings/modules/login_module/blocs/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:wellbeings/modules/login_module/views/privacy.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';

import '../../../utilities/app_functions.dart';
import '../../../utilities/app_navigator.dart';
import '../../../utilities/app_styles.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<QuestionnaireBloc, QuestionnaireState>(
      listener: (context, state) {
        state.whenOrNull(
          initial: () {},
        );
      },
      child: SafeArea(
          child: Scaffold(
        backgroundColor: AppColors.appBGColor,
        body: Stack(
          children: [
            LoginBackgroundWidget(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: SizeConfig.heightMultiplier * 21,
                  ),
                  Image.asset(
                    AppAssets.appLogo,
                    width: SizeConfig.sizeMultiplier * 30,
                  ),
                  SizedBox(
                    height: SizeConfig.sizeMultiplier * 12,
                  ),
                  Text(
                    "Welcome to",
                    textAlign: TextAlign.center,
                    style: AppTextStyle.titleTextStyle(
                        color: AppColors.appBlack,
                        fontSize: SizeConfig.textMultiplier * 4.5),
                  ),
                  Text(
                    "Leadspire",
                    style: AppTextStyle.largeText(
                      color: AppColors.appBlack,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.sizeMultiplier * 12,
                  ),
                  Text(
                    "Your path to Leadership",
                    style: AppTextStyle.titleTextStyle(
                      color: AppColors.appBlack,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.sizeMultiplier * 12,
                  ),
                  // Image.asset(
                  //   AppAssets.welcomePageImage,
                  //   width: SizeConfig.sizeMultiplier * 25,
                  // ),
                ],
              ),
            ),
            Positioned(
              bottom: SizeConfig.heightMultiplier * 25,
              right: 0,
              left: 0,
              child: Center(
                  child: GradientButton(
                text: "Get Started",
                onTap: () {
                  final qnBloc = BlocProvider.of<QuestionnaireBloc>(context);
                  qnBloc.add(const QuestionnaireEvent.fetchQuestionnaire());
                  AppNavigator.pushReplacementNamed('/SigninPage');

                  // final qnBloc = BlocProvider.of<QuestionnaireBloc>(context);
                  // qnBloc.add(const QuestionnaireEvent.fetchQuestionnaire());
                  // AppNavigator.pushNamed('/questionnaire');
                },
                height: SizeConfig.sizeMultiplier * 11,
                width: (SizeConfig.screenwidth * .85),
              )),
            ),
            // Positioned(
            //   bottom: SizeConfig.heightMultiplier * 16,
            //   right: 0,
            //   left: 0,
            //   child: TextButton(
            //     onPressed: () {
            //       // Handle onPressed logic here
            //     },
            //     child: RichText(
            //       textAlign: TextAlign.center,
            //       text: TextSpan(
            //         text: "By creating an account, you agree with our \n",
            //         style: AppTextStyle.commonTextStyle(), // Default style
            //         children: [
            //           TextSpan(
            //             text: "Terms of Service & Privacy Policy",
            //             style: AppTextStyle.commonTextStyle().copyWith(
            //               decoration: TextDecoration.underline,
            //               color: Colors
            //                   .blue, // Optional: Change color to indicate interactivity
            //             ),
            //             recognizer: TapGestureRecognizer()
            //               ..onTap = () {
            //                 // Handle link click
            //                 Navigator.of(context).push(MaterialPageRoute(
            //                     builder: (context) => const Privacy_Page()));
            //               },
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      )),
    );
  }

  checkPermissions() async {
    await requestPermission(Permission.bluetooth);
    //await requestPermission(Permission.camera);

    await requestPermission(Permission.storage);

    //await requestPermission(Permission.microphone);
    await requestPermission(Permission.notification);
    await requestPermission(Permission.photos);

    if (Platform.isIOS) {
      await requestPermission(Permission.mediaLibrary);
      await requestPermission(Permission.storage);
    } else {
      await requestPermission(Permission.bluetoothConnect);
      await requestPermission(Permission.phone);
    }
  }

  @override
  void initState() {
    checkPermissions();

    super.initState();
  }
}
