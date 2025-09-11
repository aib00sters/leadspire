import 'package:flutter/material.dart';
import 'package:wellbeings/utilities/screen_sizer.dart';

import '../../../constants/app_assets.dart';
import '../../../utilities/size_config.dart';

class homepaegeBagroundWidget extends StatelessWidget {
  final Widget child;
  const homepaegeBagroundWidget({
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
            AppAssets.homebaground,
            height: SizeConfig.heightMultiplier * 100,
          ),
        ),
        ScreenSetter(child: child),
      ],
    );
  }
}
