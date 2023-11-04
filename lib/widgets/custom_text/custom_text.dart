import 'package:flutter/material.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  final String text;
  TextStyle style;
  final TextAlign textAlign;

  CustomText(
      {super.key,
      required this.text,
      this.textAlign = TextAlign.center,
      this.style = AppTextStyles.fontSize14to400});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
    );
  }
}
