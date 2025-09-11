import 'package:flutter/material.dart';
import 'package:wellbeings/constants/app_assets.dart';
import 'package:wellbeings/modules/login_module/widgets/login_background.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/button_widget.dart';

class EnterNamePage extends StatefulWidget {
  const EnterNamePage({super.key});

  @override
  State<EnterNamePage> createState() => _EnterNamePageState();
}

class _EnterNamePageState extends State<EnterNamePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: LoginBackgroundWidget(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ScreenSetter(
                  child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * .65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              AppAssets.enterNameImage,
                              width: SizeConfig.widthMultiplier * 68,
                            ),
                            Column(
                              children: [
                                Text(
                                  "What's your email id?",
                                  style: AppTextStyle.boldTitleStyle(),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Card(
                                  color: Colors.transparent,
                                  clipBehavior: Clip.hardEdge,
                                  margin: EdgeInsets.zero,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(19)),
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 17, vertical: 15),
                                    alignment: Alignment.center,
                                    width: (SizeConfig.widthMultiplier * 91.6),
                                    decoration: const BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.colorPrimary,
                                          AppColors.colorSecondary,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        Text(
                                          "My email id is",
                                          style: AppTextStyle.boldTitleStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Card(
                                          clipBehavior: Clip.hardEdge,
                                          margin: EdgeInsets.zero,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 12),
                                            height: SizeConfig.sizeMultiplier *
                                                12.5,
                                            child: Center(
                                              child: TextFormField(
                                                textAlign: TextAlign.center,
                                                decoration:
                                                    const InputDecoration
                                                        .collapsed(
                                                  hintText: '',
                                                ),
                                                style: TextStyle(
                                                  fontSize: SizeConfig
                                                          .textMultiplier *
                                                      3.5,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: SizeConfig.heightMultiplier * 9.5,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GradientButton(
                              text: "Next",
                              onTap: () {
                                AppNavigator.pushNamed('/selectGender');
                              },
                            ),
                            // SizedBox(
                            //   height: SizeConfig.heightMultiplier * 6,
                            // )
                          ],
                        ),
                      ))
                ],
              )),
            ],
          ),
        ),
      ),
    ));
  }
}
