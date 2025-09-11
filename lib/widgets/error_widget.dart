import 'package:flutter/material.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSetter(
        child: Center(
      child: Text(
        "Please check your connection",
        style: AppTextStyle.boldTitleStyle(),
      ),
    ));
  }
}
