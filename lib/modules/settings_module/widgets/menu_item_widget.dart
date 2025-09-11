import 'package:flutter/material.dart';
import 'package:wellbeings/utilities/app_styles.dart';
import 'package:wellbeings/utilities/size_config.dart';

class MenuItemWidget extends StatelessWidget {
  final String assetUrl;
  final String title;
  final Widget? suffixItem;
  final GestureTapCallback? onTap;
  const MenuItemWidget({
    super.key,
    required this.assetUrl,
    this.suffixItem,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          width: SizeConfig.sizeMultiplier * 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    assetUrl,
                    height: SizeConfig.sizeMultiplier * 4.5,
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Text(
                    title,
                    style: AppTextStyle.commonTextStyle(color: Colors.black),
                  )
                ],
              ),
              suffixItem ?? const SizedBox()
            ],
          )),
    );
  }
}
