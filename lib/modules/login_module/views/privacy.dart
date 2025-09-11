import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/login_module/blocs/questionnaire_bloc/questionnaire_bloc.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';

class Privacy_Page extends StatelessWidget {
  const Privacy_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBGColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: SizeConfig.screenwidth * .06),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.screenheight * .2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Your Privacy Matters",
                    style: AppTextStyle.boldTitleStyle(
                        fontSize: SizeConfig.textMultiplier * 4.5)

                    // GoogleFonts.lato(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: SizeConfig.textMultiplier * 5.4),
                    ),
              ],
            ),
            SizedBox(
              height: SizeConfig.screenheight * .05,
            ),
            Text(
                "The privacy and security of your personal data is our top priority. Here's how we handle your chat data",
                style: AppTextStyle.commonTextStyle()
                // GoogleFonts.lato(
                //     fontWeight: FontWeight.w500,
                //     fontSize: SizeConfig.textMultiplier * 3.4),
                ),
            SizedBox(
              height: SizeConfig.screenheight * .05,
            ),
            Text("1.Information We Collect",
                style: AppTextStyle.titleTextStyle()
                //  AppTextStyle.largeTitleStyle(
                //     fontSize: SizeConfig.textMultiplier * 4.4),
                ),
            SizedBox(
              height: SizeConfig.screenheight * .02,
            ),
            Text(
              "When you register or use our app, we may collect personal information such as your name, email address, and other details you provide.",
              style: AppTextStyle.commonTextStyle(),
            ),
            SizedBox(
              height: SizeConfig.screenheight * .02,
            ),
            Text("2. Non-Personal Information:",
                style: AppTextStyle.titleTextStyle()
                // AppTextStyle.largeTitleStyle(
                //     fontSize: SizeConfig.textMultiplier * 4.4),
                ),
            SizedBox(
              height: SizeConfig.screenheight * .02,
            ),
            Text(
              "We may collect non-personal information, such as device information, app usage data, and analytics..",
              style: AppTextStyle.commonTextStyle(),
            ),
            SizedBox(
              height: SizeConfig.screenheight * .02,
            ),
            Text("3.Changes to This Privacy Policy",
                style: AppTextStyle.titleTextStyle()),
            SizedBox(
              height: SizeConfig.screenheight * .02,
            ),
            Text(
              "We reserve the right to update or modify this Privacy Policy at any time. The latest version will be posted on this page with the effective date..",
              style: AppTextStyle.commonTextStyle(),
            ),
            SizedBox(
              height: SizeConfig.screenheight * .05,
            ),
            // GradientButton(
            //   text: "Get Started",
            //   onTap: () {
            //     final qnBloc = BlocProvider.of<QuestionnaireBloc>(context);
            //     qnBloc.add(const QuestionnaireEvent.fetchQuestionnaire());
            //     AppNavigator.pushReplacementNamed('/SigninPage');
            //     //AppNavigator.pushNamed('/questionnaire');
            //   },
            //   height: SizeConfig.sizeMultiplier * 11,
            //   width: (SizeConfig.widthMultiplier * 91.6).clamp(350, 370),
            // )
          ],
        ),
      ),
    );
  }
}
