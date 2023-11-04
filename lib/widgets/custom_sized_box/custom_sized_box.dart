import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomSizedBox extends StatelessWidget {
  double? height;
  double? width;
  Widget? child;

  CustomSizedBox({this.height, this.width, this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: height,
        width: width,
        child: child,

    );
  }
}
