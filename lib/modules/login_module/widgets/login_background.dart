import 'package:flutter/material.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../constants/app_assets.dart';
import '../../../utilities/size_config.dart';

class LoginBackgroundWidget extends StatelessWidget {
  final Widget child;
  const LoginBackgroundWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset(
            AppAssets.loginBgImage,
            height: SizeConfig.heightMultiplier * 25,
          ),
        ),
        ScreenSetter(child: child),
      ],
    );
  }
}
