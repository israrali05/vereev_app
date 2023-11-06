import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
import 'package:swooshed_app/widgets/custom_text_form_field/custom_text_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';
import '../../widgets/custom_button/custom_buttons.dart';
import '../../widgets/custom_text/custom_text.dart';
import '../details/details.dart';
import 'components/choose_brand_data.dart';

class Brand extends StatelessWidget {
  const Brand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 142,
        // elevation: 0,
        backgroundColor: AppColors.bgColor,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(
              leadingIcon: Icons.arrow_back_ios_new,
              leadingText: AppLocalizations.of(context)!.step_2,
              trailText: AppLocalizations.of(context)!.skip,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w),
              child: CustomText(
                text: AppLocalizations.of(context)!.choose,
                style: AppTextStyles.heading1,
              ),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.w),
              child: TextForm(
                hintText: AppLocalizations.of(context)!.search,
                prefixIcon: Icon(
                  Icons.search,
                  color: AppColors.bgColor,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
          child: Column(
            children: [
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 10.h),
                    ChooseBrandData(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50.h,
        margin: EdgeInsets.all(30.r),
        child: CustomButton(
          text: AppLocalizations.of(context)!.next,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Details(),
              ),
            );
          },
        ),
      ),
    );
  }
}
