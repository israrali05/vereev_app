import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
import 'package:swooshed_app/view/home/check_results_components/check_results_components.dart';
import 'package:swooshed_app/widgets/custom_text/custom_text.dart';

import '../../../model/home_categories_model/categories_model.dart';
import '../../../utils/app_colors/app_colors.dart';
import '../../../utils/app_images/app_images.dart';
import '../catergories_components/categories_components.dart';

class ActiveSearchBar extends StatefulWidget {
  TextEditingController? searchController = TextEditingController();

  void Function(String)? onChanged;

  ActiveSearchBar({ this.onChanged, Key? key})
      : super(key: key);

  @override
  State<ActiveSearchBar> createState() => _ActiveSearchBarState();
}

class _ActiveSearchBarState extends State<ActiveSearchBar> {
  List<CategoriesModel> allUsers = [
    CategoriesModel(
      img: AppImages.electronicsLogo,
      imageHeight: 19.h,
      imageWidth: 16.w,
      text: "Electronic",
    ),
    CategoriesModel(
      img: AppImages.fashionLogo,
      imageHeight: 19.h,
      imageWidth: 25.w,
      text: "Fashion",
    ),
    CategoriesModel(
      img: AppImages.collectibleLogo,
      imageHeight: 19.h,
      imageWidth: 27.w,
      text: "Collectible",
    ),
    CategoriesModel(
      img: AppImages.healthLogo,
      imageHeight: 19.h,
      imageWidth: 23.w,
      text: "Health",
    ),
    CategoriesModel(
      img: AppImages.bookLogo,
      imageHeight: 19.h,
      imageWidth: 24.w,
      text: "Book",
    ),
    CategoriesModel(
      img: AppImages.othersLogo,
      imageHeight: 19.h,
      imageWidth: 20.w,
      text: "Other",
    ),
  ];

  List<CategoriesModel> _foundUser = [];

  void _runFilter(String searchKeyword) {
    if (searchKeyword.isEmpty) {
      setState(() {
        _foundUser = allUsers;
      });
    } else {
      setState(() {
        _foundUser = allUsers
            .where((category) => category.text!
            .toLowerCase()
            .contains(searchKeyword.toLowerCase()))
            .toList();
      });
    }
  }

  @override
  void initState() {
    _foundUser = allUsers;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // width: 300.w,
          height: 32.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.r),
            color: AppColors.textColor,
          ),
          child: TextFormField(
            onChanged: (value) => _runFilter(value),
            cursorColor: AppColors.bgColor,
            onTap: (){
             setState(() {
               bool isBackgroundVisible = false;
             });
            },
            textAlign: TextAlign.start,
            controller: widget.searchController,
            decoration: InputDecoration(

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4.r),
                borderSide: BorderSide.none
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 4.h),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(4.r),

              ),

              hintText: "Search every product here",
              hintStyle: AppTextStyles.fontSize12to300.copyWith(
                color: AppColors.btnTextColor,
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 20,
                color: AppColors.bgColor,
              ),
              filled: true,
            ),
          ),
        ),
        // SizedBox(
        //   height: 10.h,
        // ),
        // _foundUser.isNotEmpty
        //     ? Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 32.w),
        //   child: CheckResultsComponents(),
        // )
        //     : CustomText(
        //   text: "No Result Found",
        //   style: AppTextStyles.fontSize12to300,
        // ),
      ],
    );
  }
}
