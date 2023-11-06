import 'package:flutter/material.dart';
import 'package:swooshed_app/utils/app_colors/app_colors.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
import 'package:swooshed_app/widgets/botton_widget.dart';
import 'package:swooshed_app/widgets/custom_button/custom_buttons.dart';
import 'package:swooshed_app/widgets/custom_sized_box/custom_sized_box.dart';

class addCard extends StatelessWidget {
  const addCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text.rich(TextSpan(
          text: "Card Name",
          style:
              AppTextStyles.fontSize14to400.copyWith(color: AppColors.bgColor),
          children: [
            TextSpan(
                text: "*",
                style: TextStyle(color: Color.fromRGBO(93, 101, 188, 1)))
          ],
        )),
        SizedBox(
          height: 4,
        ),
        TextField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              isCollapsed: true,
              hintText: "Ibad Raed",
              hintStyle: AppTextStyles.fontSize14to400,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5))),
        ),
        SizedBox(
          height: 20,
        ),
        Text.rich(TextSpan(
          text: "Card Number",
          style:
              AppTextStyles.fontSize14to400.copyWith(color: AppColors.bgColor),
          children: [
            TextSpan(
                text: "*",
                style: TextStyle(color: Color.fromRGBO(93, 101, 188, 1)))
          ],
        )),
        SizedBox(height: 4),
        TextField(
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12, horizontal: 10),
              isCollapsed: true,
              hintText: "2583 3883 8484 8488",
              hintStyle: AppTextStyles.fontSize14to400,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey, width: 0.5))),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 90,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                    text: "Expiry Date",
                    style: AppTextStyles.fontSize14to400
                        .copyWith(color: AppColors.bgColor),
                    children: [
                      TextSpan(text: "*", style: AppTextStyles.fontSize14to400)
                    ],
                  )),
                  SizedBox(
                    height: 4,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                        isCollapsed: true,
                        hintText: "12/24",
                        hintStyle: AppTextStyles.fontSize14to400,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.5))),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 90,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(TextSpan(
                    text: "CVC / Cvv",
                    style: AppTextStyles.fontSize14to400
                        .copyWith(color: AppColors.bgColor),
                    children: [
                      TextSpan(text: "*", style: AppTextStyles.fontSize14to400)
                    ],
                  )),
                  SizedBox(
                    height: 4,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                        isCollapsed: true,
                        hintText: "*****",
                        hintStyle: AppTextStyles.fontSize14to400,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.5)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 0.5))),
                  ),
                ],
              ),
            )
          ],
        ),
        CustomSizedBox(
          height: 20,
        ),
        BottonWidget(
          height: 50,
          width: double.infinity,
          text: "Save",
        )
      ],
    );
  }
}
