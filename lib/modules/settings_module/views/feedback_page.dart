import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/modules/settings_module/bloc/feedback_bloc/bloc/feedback_bloc.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/size_config.dart';
import 'package:wellbeings/widgets/button_widget.dart';
import 'package:wellbeings/widgets/custom_snackbar.dart';

class Feedback_Page extends StatefulWidget {
  const Feedback_Page({super.key});

  @override
  State<Feedback_Page> createState() => _Feedback_PageState();
}

class _Feedback_PageState extends State<Feedback_Page> {
  @override
  void dispose() {
    feedbackcontroller.dispose();
    super.dispose();
  }

  TextEditingController feedbackcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocListener<FeedbackBloc, FeedbackState>(
      listener: (context, state) {
        state.whenOrNull(success: () {
          snackBarWidget("Feedback updated", Icons.feedback, Colors.green,
              Colors.black, Colors.white, 1);
          feedbackcontroller.clear();
        }, error: () {
          snackBarWidget("Error", Icons.warning, Colors.red, Colors.black,
              Colors.white, 1);
        });

        // TODO: implement listener
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.appBGColor,
          title: Text(
            "Feedbcak",
            style: AppTextStyle.titleTextStyle(),
          ),
        ),
        backgroundColor: AppColors.appBGColor,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.sizeOf(context).width * .05,
                  right: MediaQuery.sizeOf(context).width * .05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Enter your Feedback",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: SizeConfig.textMultiplier * 5.4),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .03,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .85,
                    child: TextField(
                      controller: feedbackcontroller,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .03,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * .85,
                    child: GradientButton(
                      text: "Submit your feedback",
                      onTap: () {
                        if (feedbackcontroller != "") {
                          final feedbackbloc =
                              BlocProvider.of<FeedbackBloc>(context);
                          feedbackbloc.add(FeedbackEvent.enterfeedback(
                              feedback: feedbackcontroller.text));
                        } else {
                          snackBarWidget("Enter your feedback", Icons.warning,
                              Colors.red, Colors.black, Colors.white, 1);
                        }
                      },
                      height: SizeConfig.sizeMultiplier * 11,
                      width:
                          (SizeConfig.widthMultiplier * 91.6).clamp(350, 370),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
