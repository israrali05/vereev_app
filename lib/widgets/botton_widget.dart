import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swooshed_app/utils/app_colors/app_colors.dart';

import '../utils/app_fonts/app_fonts.dart';

class BottonWidget extends StatelessWidget {
  final void Function()? ontap;
  final String text;
  final double height;
  final double width;
  const BottonWidget(
      {super.key,
      required this.text,
      required this.height,
      required this.width,
      this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        height: height,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: AppColors.textColorWhite,
          // gradient: AppColors.buttonGradient,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Center(
            child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: AppColors.bgColor,
            // color: AppColors.textColor,
            fontSize: 16,
            fontFamily: Appfonts.sfPro,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.41,
          ),
        )),
      ),
    );
  }
}
