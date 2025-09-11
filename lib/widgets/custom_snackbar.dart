import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wellbeings/utilities/app_navigator.dart';
import 'package:wellbeings/utilities/size_config.dart';


Future<void> snackBarWidget(String msg, IconData icons, Color iconcolor,
    Color texcolor, Color backgeroundColor, int time) async {
  final completer = Completer<void>();
  final snackbar = SnackBar(
    shape: const StadiumBorder(),
    behavior: SnackBarBehavior.floating,
    backgroundColor: backgeroundColor,
    margin: EdgeInsets.only(
        bottom: 20,
        left: SizeConfig.screenwidth * .035,
        right: SizeConfig.screenwidth * .035),
    duration: Duration(seconds: time),
    content: SizedBox(
      width: SizeConfig.screenwidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: SizeConfig.widthMultiplier * 75,
            child: Text(
              msg,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: texcolor,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(
            icons,
            color: iconcolor,
          )
        ],
      ),
    ),
  );
  scaffoldMsgKey.currentState?.showSnackBar(snackbar).closed.then((reason) {
    if (!completer.isCompleted) {
      completer.complete();
    }
  });

  return completer.future;
}
