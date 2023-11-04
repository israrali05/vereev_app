import 'dart:io';


import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';

import 'package:swooshed_app/utils/app_colors/app_colors.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
import 'package:swooshed_app/view/redeem_promo_code/redeem_promo_code.dart';
import 'package:swooshed_app/widgets/custom_button/custom_buttons.dart';
import 'package:swooshed_app/widgets/custom_image/custom_image.dart';
import 'package:swooshed_app/widgets/custom_text/custom_text.dart';

import '../../model/detail_model/detail_model.dart';
import '../../utils/app_images/app_images.dart';
import '../../widgets/custom_container/custom_container.dart';
import 'components/image_guidance.dart';

class CategoryTwo extends StatefulWidget {
  const CategoryTwo({super.key});

  @override
  State<CategoryTwo> createState() => _CategoryTwoState();
}

class _CategoryTwoState extends State<CategoryTwo> {
  List<DetailModel> _detailList = [
    DetailModel(text: 'Appearance', imgUrl: AppImages.appearance2),
    DetailModel(text: 'FrontSide', imgUrl: AppImages.front_side2),
    DetailModel(text: 'BackSide', imgUrl: AppImages.back_side2),
    DetailModel(text: 'Inside', imgUrl: AppImages.inside2),
    DetailModel(text: 'Price Tag', imgUrl: AppImages.price_tag2),
    DetailModel(text: 'Side Tag', imgUrl: AppImages.side_tag2),
    DetailModel(text: 'Receipt', imgUrl: AppImages.receipt2),
  ];
  List<PlatformFile?> selectedFiles = List.filled(12, null);

  FilePickerResult? result;
  PlatformFile? file;

  void PickFile(int index) async {
    result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );
    if (result == null) {
      return;
    } else {
      //file = result!.files.first;
      selectedFiles[index] = result!.files.first;
      viewFile(selectedFiles[index]!);
      //viewFile(file!);
      setState(() {});
    }
  }

  void viewFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.bgColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Column(
            children: [
              ImageGuidance(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    CustomText(
                      text:
                          'This is the examples of the images you need to submit',
                      style: AppTextStyles.fontSize14to400,
                    ),
                    SizedBox(height: 24.h),
                    GridView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: _detailList.length,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8),
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Expanded(
                              child: CustomContainer(
                                height: 98,
                                width: 98,
                                gradient: AppColors.mediumGradient,
                                borderRadius: BorderRadius.circular(10.r),
                                child: InkWell(
                                  onTap: () {
                                    PickFile(index);
                                  },
                                  child: selectedFiles[index] == null
                                      ? Center(
                                          child: CustomImage(
                                            height: 28.h,
                                            width: 34.w,
                                            imgUrl: _detailList[index].imgUrl,
                                          ),
                                        )
                                      : Image.file(
                                          File(
                                            selectedFiles[index]!.path!,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            CustomText(
                              text: _detailList[index].text,
                              style: AppTextStyles.fontSize14to400.copyWith(
                                fontWeight: FontWeight.w700,
                                letterSpacing: 0.35,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
              CustomButton(
                text: 'Go To Redeem',
                onPressed: () {
                  Get.to(RedeemPromoCode());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
