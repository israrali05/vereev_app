import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';

import '../../../Model/brand_model/brand_model.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../widgets/custom_container/custom_container.dart';
import '../../../widgets/custom_image/custom_image.dart';
import '../../../widgets/custom_text/custom_text.dart';

// ignore: must_be_immutable
class ChooseBrandData extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _brandData = getData(context);

    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: _brandData.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CustomContainer(
          margin: EdgeInsets.only(bottom: 12.r),
          height: 70.h,
          width: MediaQuery.of(context).size.width,
          borderRadius: BorderRadius.circular(10),
          color: AppColors.textColor,
          child: ListTile(
            leading: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: AppColors.textColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 2,
                  ),
                ],
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Center(
                child: CustomImage(
                  imgUrl: _brandData[index].imgUrl,
                  width: 27.w,
                  height: 32.h,
                ),
              ),
            ),
            title: CustomText(
              textAlign: TextAlign.start,
              text: _brandData[index].titleText,
              style: AppTextStyles.fontSize14to400
                  .copyWith(color: AppColors.bgColor)
                  .copyWith(letterSpacing: 0.35, fontWeight: FontWeight.w300,),
            ),
            subtitle: CustomText(
              textAlign: TextAlign.start,
              text: _brandData[index].subTitle,
              style: AppTextStyles.fontSize17to600.copyWith(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.35,
                  color: AppColors.bgColor),
            ),
          ),
        );
      },
    );
  }
}
