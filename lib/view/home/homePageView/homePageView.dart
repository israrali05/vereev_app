import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:swooshed_app/utils/app_colors/app_colors.dart';
import 'package:swooshed_app/utils/app_images/app_images.dart';
import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
import 'package:swooshed_app/view/home/active_search_bar/active_search_bar.dart';
import 'package:swooshed_app/widgets/custom_text/custom_text.dart';

class HomePageViewComponent extends StatefulWidget {

  // TextEditingController SearchController =TextEditingController();

  HomePageViewComponent({super.key});

  @override
  _HomePageViewComponentState createState() => _HomePageViewComponentState();
}

class _HomePageViewComponentState extends State<HomePageViewComponent> {
  final controller = PageController();
  int currentPage = 0;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToPage(
        currentPage,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment:Alignment.center ,
      children: [
        SizedBox(
          height: 200,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            controller: controller,
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            onPageChanged: (page) {
              setState(() {
                currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              ///page view bg Image
              return Container(
                width: 200.w,
                decoration: const BoxDecoration(
                  gradient: AppColors.textGradient,
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    image: AssetImage(
                      "assets/images/png_images/homePageView.png",
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        ///page view controller
        Positioned(
          bottom: 12,
          left: 20,
          child: SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              dotHeight: 8,
              dotColor: Colors.white,
              dotWidth: 8,
            ),
            onDotClicked: (index) => controller.animateToPage(index,
                duration: const Duration(seconds: 1), curve: Curves.easeInOut),
          ),
        ),
        Positioned(
          top: 10,
          // left: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // SizedBox(height: 28.h, width: 250.w, child: SearchBar()),
              _isVisible == false
                  ? Container(
                      // height: 24.h,
                      padding: EdgeInsets.symmetric(vertical: 6.h),
                      width: 230.w,
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          image: DecorationImage(
                              image: AssetImage(
                        AppImages.searchBg,

                      ))),
                      child: Center(
                        child: CustomText(
                          text: "Find more checking product result here!",
                          style: AppTextStyles.fontSize10to500.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.textColor),
                        ),
                      ),
                    )
                  : Container(
                      height: 40.h, width: 240.w, child: ActiveSearchBar()),
              SizedBox(
                width: 4.w,
              ),
              _isVisible == false
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          _isVisible = !_isVisible;
                        });
                      },
                      child: SizedBox(
                          width: 16.w,
                          height: 17.h,
                          child: const Icon(
                            Icons.search,
                            color: AppColors.textColor,
                          )),
                    )
                  : SizedBox.shrink(),
            ],
          ),
        )
      ],
    );
  }
}
