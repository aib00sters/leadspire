import 'package:flutter/material.dart';
import 'package:wellbeings/utilities/size_config.dart';

import '../../../constants/app_colors.dart';

class QuestionnaireItem extends StatelessWidget {
  final bool selected;
  final String text;
  const QuestionnaireItem({
    super.key,
    required this.selected,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.symmetric(vertical: 6),
      shape: const StadiumBorder(),
      child: Container(
        alignment: Alignment.center,
        height: 42,
        width: 320,
        decoration: selected
            ? const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.colorPrimary,
                    AppColors.colorSecondary,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              )
            : BoxDecoration(
                border: Border.all(
                  color: AppColors.colorPrimary,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(50),
                color: AppColors.appBGColor),
        child: Text(
          text,
          style: TextStyle(
              fontSize: SizeConfig.textMultiplier * 2.9,
              fontWeight: FontWeight.w500,
              color: selected ? Colors.black : AppColors.appBlack),
        ),
      ),
    );
  }
}
