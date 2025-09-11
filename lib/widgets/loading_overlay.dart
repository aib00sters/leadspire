import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../utilities/app_styles.dart';
import '../utilities/size_config.dart';

class LoadingOverlay {
  OverlayEntry? _overlay;

  LoadingOverlay();

  void hide() {
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
  }

  void show(BuildContext context, {final String? messageText}) {
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
    if (_overlay == null) {
      _overlay = OverlayEntry(
        // replace with your own layout
        builder: (context) => ColoredBox(
          color: const Color(0x80FFFFFF),
          child: SizedBox(
            height: SizeConfig.screenheight,
            width: SizeConfig.screenwidth,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Center(
                  child: CircularProgressIndicator(),
                ),
                Text(
                  messageText ?? "",
                  style: AppTextStyle.commonTextStyle(
                    color: AppColors.colorPrimary,
                  ),
                )
              ],
            )),
          ),
        ),
      );
      Overlay.of(context).insert(_overlay!);
    }
  }
}

class OverlayWidget {
  OverlayEntry? _overlay;
  final Widget child;

  OverlayWidget({required this.child});

  void hide() {
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
  }

  void show(
    BuildContext context,
  ) {
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
    if (_overlay == null) {
      _overlay = OverlayEntry(
        // replace with your own layout

        builder: (context) => child,
      );
      Overlay.of(context).insert(_overlay!);
    }
  }
}
