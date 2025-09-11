import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SpinKitWaveSpinner(
          size: 65,
          trackColor: Color.fromARGB(255, 179, 220, 242),
          waveColor: Color.fromARGB(255, 179, 220, 242),
          color: Colors.blue,
        )
      ],
    );
  }
}
