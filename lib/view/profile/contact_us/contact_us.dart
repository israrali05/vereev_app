import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swooshed_app/utils/app_colors/app_colors.dart';
import 'package:swooshed_app/utils/app_images/app_images.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
import 'package:swooshed_app/widgets/custom_sized_box/custom_sized_box.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(children: [
        CustomSizedBox(
          height: 50.h,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Image.asset(
                  AppImages.profileBackArrow,
                  height: 25,
                  // width: 20,
                ),
              ),
              CustomSizedBox(
                width: 15.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Us",
                      style: AppTextStyles.fontSize42to700.copyWith(
                          height: 0.9,
                          color: AppColors.textColorWhite,
                          fontSize: 28)),
                  SizedBox(
                    width: 250.w,
                    child: Text("Till Your Form to Connect Any Query you Have!",
                        style: AppTextStyles.fontSize14to400.copyWith(
                            color: AppColors.textColorWhite,
                            height: 2,
                            fontSize: 16)),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
