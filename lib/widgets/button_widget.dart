import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../utilities/app_styles.dart';
import '../utilities/size_config.dart';

typedef OnTap<T> = Function(T);

class GradientButton extends StatelessWidget {
  final String? text;
  final double? height;
  final double? width;
  final GestureTapCallback? onTap;
  final bool? enable;
  final Widget? child;
  const GradientButton({
    super.key,
    this.text,
    required this.onTap,
    this.height,
    this.width,
    this.child,
    this.enable,
  });

  @override
  Widget build(BuildContext context) {
    bool mEnabled = enable ?? true;
    return Card(
      elevation: 5,
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.zero,
      shape: const StadiumBorder(),
      child: InkWell(
        onTap: mEnabled ? onTap : null,
        child: Container(
          alignment: Alignment.center,
          height: height ?? SizeConfig.sizeMultiplier * 11,
          width: width ?? (SizeConfig.widthMultiplier * 91.6),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: mEnabled
                  ? [
                      AppColors.colorPrimary,
                      AppColors.colorSecondary,
                    ]
                  : [Colors.grey],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                child ?? const SizedBox(),
                if (text != null)
                  Text(
                    text!,
                    style: AppTextStyle.titleTextStyle(
                      color: Colors.black,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
