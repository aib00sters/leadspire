import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingOverlay {
  OverlayEntry? _overlay;

  LoadingOverlay();

  void hide(BuildContext context) {
    if (_overlay != null) {
      _overlay!.remove();
      _overlay = null;
    }
  }

  void show(BuildContext context) {
    if (_overlay == null) {
      _overlay = OverlayEntry(
        // replace with your own layout
        builder: (context) => const ColoredBox(
          color: Color(0x80000000),
          child: Center(
              child: SpinKitWaveSpinner(
            size: 65,
            trackColor: Color.fromARGB(255, 179, 220, 242),
            waveColor: Color.fromARGB(255, 179, 220, 242),
            color: Colors.black,
          )),
        ),
      );
      Overlay.of(context).insert(_overlay!);
    }
  }
}
