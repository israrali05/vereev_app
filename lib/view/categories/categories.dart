import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
import '../../model/category_model/category_model.dart';
import '../../utils/app_colors/app_colors.dart';
import '../../utils/app_images/app_images.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../widgets/custom_button/custom_buttons.dart';
import '../../widgets/custom_container/custom_container.dart';
import '../../widgets/custom_image/custom_image.dart';
import '../../widgets/custom_text/custom_text.dart';
import '../brand/brand.dart';

// ignore: must_be_immutable
class Categories extends StatelessWidget {
  List<CategoryData> _categorys(BuildContext context) {
    return [
      CategoryData(
          iconUrl: AppImages.category1, titleText: AppLocalizations.of
        (context)!.electronic),
      CategoryData(iconUrl: AppImages.category2, titleText: AppLocalizations.of
        (context)!.fashion),
      CategoryData(iconUrl: AppImages.category3, titleText: AppLocalizations.of
        (context)!.collectible),
      CategoryData(iconUrl: AppImages.category4, titleText: AppLocalizations.of
        (context)!.health),
      CategoryData(iconUrl: AppImages.category5, titleText: AppLocalizations.of
        (context)!.book),
      CategoryData(iconUrl: AppImages.category6, titleText: AppLocalizations.of
        (context)!.other),
    ];
  }
  @override
  Widget build(BuildContext context) {
    final _category = _categorys(context);
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
                  leadingText:  AppLocalizations.of
                    (context)!.step,
                  trailText: '',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text:  AppLocalizations.of
                          (context)!.choose,
                        style: AppTextStyles.heading1,
                      ),
                      SizedBox(height: 36.h),
                      ///Choose Category List View Builder
                      ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: _category.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return CustomContainer(
                            margin: EdgeInsets.only(bottom: 12.h),
                            height: 70.h,
                            width: MediaQuery.of(context).size.width,
                            borderRadius: BorderRadius.circular(10),
                            // gradient: AppColors.mediumGradient,
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 12.w, vertical: 10.h),
                              leading: Padding(
                                padding:  EdgeInsets.all(2.r),
                                child: Container(
                                  height: 50.w,
                                  width: 50.h,

                                  decoration: BoxDecoration(
                                    color: AppColors.textColor,
                                    borderRadius: BorderRadius.circular(10.r),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.bgColor.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0, 3),

                                      ),
                                    ],
                                  ),

                                  child: Center(
                                    child: CustomImage(
                                      width: 28.w,
                                      height: 27.h,
                                      color: AppColors.bgColor,
                                        imgUrl: _category[index].iconUrl),
                                  ),
                                ),
                              ),
                              title: CustomText(
                                textAlign: TextAlign.start,
                                text: _category[index].titleText,
                                style: AppTextStyles.fontSize18to700
                                    .copyWith(fontSize: 17,color: AppColors.bgColor),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 50.h,
          margin: EdgeInsets.all(30.r),
          child: CustomButton(
            text: AppLocalizations.of
              (context)!.next,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Brand(),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
