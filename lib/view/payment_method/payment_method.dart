import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';
import '../../widgets/custom_container/custom_container.dart';
import '../../widgets/custom_text/custom_text.dart';
import '../payment_success1/payment_succcess_1.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'components/bank_transfer.dart';
import 'components/gradient_text.dart';
import 'components/payment_method_container.dart';
import 'components/virtual_account.dart';
import 'components/wallet.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            child: Column(
              children: [
                CustomAppBar(
                    leadingIcon: Icons.arrow_back_ios_new,
                    leadingText: AppLocalizations.of(context)!.step_3,
                    trailText: ''),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: AppLocalizations.of(context)!.paymentMethod,
                        style: AppTextStyles.heading1,
                      ),
                      SizedBox(height: 20.h),
                      CustomText(
                        text: AppLocalizations.of(context)!.swooshedToken,
                        style: AppTextStyles.fontSize14to400.copyWith(
                            fontWeight: FontWeight.w700, letterSpacing: 0.35),
                      ),
                      SizedBox(height: 20.h),
                      Wallet(),
                      SizedBox(height: 20.h),
                      CustomText(
                        text: AppLocalizations.of(context)!.virtual_account,
                        style: AppTextStyles.fontSize14to400.copyWith(
                            fontWeight: FontWeight.w700, letterSpacing: 0.35),
                      ),
                      SizedBox(height: 20.h),
                      VirtualAccount(),
                      SizedBox(height: 20.h),
                      CustomText(
                        text: AppLocalizations.of(context)!.bank_transfer,
                        style: AppTextStyles.fontSize14to400.copyWith(
                            fontWeight: FontWeight.w700, letterSpacing: 0.35),
                      ),
                      SizedBox(height: 20.h),
                      BankTransfer(),
                      SizedBox(height: 20.h),
                      PaymentMethodContainer(
                        imgUrl: '',
                        title: AppLocalizations.of(context)!.add_credit,
                        icon: Icons.add,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomContainer(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          height: 89.h,
          width: MediaQuery.of(context).size.width,
          color: AppColors.textColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: AppLocalizations.of(context)!.total,
                    style: AppTextStyles.fontSize18to700.copyWith(fontSize: 12,color: AppColors.bgColor),
                  ),
                  CustomText(
                    text: AppLocalizations.of(context)!.token,
                    style: AppTextStyles.heading1.copyWith(color: AppColors.bgColor),
                  ),
                  GradientText(),
                ],
              ),
              Container(

               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10.r),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey,
                     offset: Offset(0, 3),
                     blurRadius: 6,
                     spreadRadius: 0,
                   ),
                 ],
                 color: AppColors.textColor,
               ),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  onPressed: () {
                    Get.to(
                      PaymentSuccess1(),
                    );
                  },
                  child: CustomText(
                    style: AppTextStyles.fontSize14to400
                        .copyWith(fontWeight: FontWeight.w600),
                    text: AppLocalizations.of(context)!.pay,
                  ),

                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
