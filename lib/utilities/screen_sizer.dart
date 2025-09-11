import 'package:flutter/material.dart';

class ScreenSetter extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  const ScreenSetter({
    super.key,
    required this.child,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? MediaQuery.of(context).size.height,
      width: width ?? MediaQuery.of(context).size.width,
      child: child,
    );
  }
}
