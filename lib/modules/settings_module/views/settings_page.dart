import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wellbeings/constants/app_colors.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';
import 'package:wellbeings/utilities/size_config.dart';
import '../widgets/settings_menu.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.appBGColor,
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          70,
        ),
        child: AppBar(
          toolbarHeight: 70,
          backgroundColor: AppColors.appBGColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Settings",
            style: AppTextStyle.titleTextStyle(),
          ),
          actions: [],
        ),
      ),
      body: ScreenSetter(
          child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.sizeMultiplier * 4),
        child: const Stack(
          children: [
            SettingsMenu(),
          ],
        ),
      )),
    ));
  }
}
