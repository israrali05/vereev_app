import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swooshed_app/view/redeem_promo_code/components/top_text.dart';

import '../../utils/app_colors/app_colors.dart';
import 'components/redeem_text_field.dart';

class RedeemPromoCode extends StatelessWidget {
  const RedeemPromoCode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TopText(),
              SizedBox(height: 16.h),
              RedeemTextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
