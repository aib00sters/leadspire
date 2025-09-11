import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../constants/app_colors.dart';

String? fontFamily = GoogleFonts.lato().fontFamily;

class AppGradients extends Gradient {
  AppGradients.gradient1()
      : super(colors: [
          AppColors.colorPrimary,
          AppColors.colorSecondary,
        ]);

  @override
  Shader createShader(Rect rect, {TextDirection? textDirection}) {
    throw UnimplementedError();
  }

  @override
  Gradient scale(double factor) {
    throw UnimplementedError();
  }
  
  @override
  Gradient withOpacity(double opacity) {
    // TODO: implement withOpacity
    throw UnimplementedError();
  }
}

class AppTextStyle extends TextStyle {
  AppTextStyle.boldTitleStyle({
    double? fontSize,
    Color? color,
  }) : super(
          inherit: false,
          height: 1.2,
          fontSize: fontSize ?? SizeConfig.textMultiplier * 3.4,
          fontWeight: FontWeight.w600,
          fontFamily: fontFamily,
          color: color ?? AppColors.appBlack,
        );
  AppTextStyle.commonTextStyle({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
  }) : super(
          inherit: false,
          height: 1.2,
          fontSize: fontSize ?? SizeConfig.textMultiplier * 2.86,
          fontWeight: fontWeight ?? FontWeight.w500,
          fontFamily: fontFamily,
          color: color ?? AppColors.appBlack,
        );

  @override
  AppTextStyle.largeText({
    double? fontSize,
    Color? color,
  }) : super(
          inherit: false,
          height: 1.2,
          fontSize: fontSize ?? SizeConfig.textMultiplier * 7.3,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily,
          color: color ?? AppColors.appBlack,
        );
  AppTextStyle.largeTitleStyle({
    double? fontSize,
    Color? color,
  }) : super(
          inherit: false,
          height: 1.2,
          fontSize: fontSize ?? SizeConfig.textMultiplier * 4.5,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily,
          color: color ?? AppColors.appBlack,
        );
  AppTextStyle.titleTextStyle({
    double? fontSize,
    Color? color,
  }) : super(
          inherit: false,
          height: 1.2,
          fontSize: fontSize ?? SizeConfig.textMultiplier * 3.25,
          fontWeight: FontWeight.w500,
          fontFamily: fontFamily,
          color: color ?? AppColors.appBlack,
        );
}
