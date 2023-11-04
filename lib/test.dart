// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:swooshed_app/utils/app_colors/app_colors.dart';
// import 'package:swooshed_app/utils/app_styles/app_text_styles.dart';
// import 'package:swooshed_app/widgets/custom_text/custom_text.dart';
//
// class TestWWW extends StatefulWidget {
//   const TestWWW({super.key});
//
//   @override
//   State<TestWWW> createState() => _TestWWWState();
// }
//
// class _TestWWWState extends State<TestWWW> {
//   final controller = PageController(viewportFraction: 0.8, keepPage: true);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//         Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         width: double.infinity,
// decoration: BoxDecoration(
//   gradient: AppColors.textGradient
// ),
//         // color: Colors.blue,
//
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           // mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only( bottom: 10),
//               child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     const Text('Promotion',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 10,
//                             fontWeight: FontWeight.w500)),
//                     const Text(
//                       'JUST\nFOR\nYOU',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: 30, color: Colors.white),
//                     ),
//                     Container(
//                       height: 10.h,
//                       width: 100.w,
//                       color: Colors.grey,
//                       child: Center(
//                         child: CustomText(
//                           text: "Valid until April 18th, 2022",
//                           style: AppTextStyles.fontSize10to500
//                               .copyWith(
//                               color: AppColors.bgColor,
//                               fontSize: 6),
//                         ),
//                       ),
//                     ),
//                   ]),
//             ),
//             Stack(
//               clipBehavior: Clip.none,
//               fit: StackFit.loose,
//               children: [
//                 Image.asset('assets/images/png_images/Discount.png',
//                     width: 100, height: 100),
//                 const Positioned(
//                     top: 30,
//                     left: 20,
//                     child: Text('50 %',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 32,
//                             fontWeight: FontWeight.w700))),
//                 Positioned(
//                   left: 70,
//                   child: Image.asset(
//                       'assets/images/png_images/Image.png',
//                       width: 100,
//                       height: 100),
//                 ),
//                 Positioned(
//                   left: 152,
//                   top: 70,
//                   bottom: 12,
//                   // right: 12,
//                   child: Image.asset(
//                       'assets/images/png_images/Logo12.png',
//                       width: 53,
//                       height: 16),
//                 ),
//               ],
//             )
//           ],
//         ),
//       )
//             // Container(
//             //   // padding: EdgeInsets.only(left: 0,),
//             //   height: 180.h,
//             //   width: double.infinity,
//             //   decoration: const BoxDecoration(gradient: AppColors.textGradient),
//             //   child: PageView.builder(
//             //     controller: controller,
//             //     itemCount: 3,
//             //     scrollDirection: Axis.horizontal,
//             //     itemBuilder: (context, index) {
//             //       return Container(
//             //         padding: EdgeInsets.symmetric(horizontal: 20),
//             //         width: double.infinity,
//             //
//             //         color: Colors.white30,
//             //         child: Row(
//             //           crossAxisAlignment: CrossAxisAlignment.end,
//             //           // mainAxisAlignment: MainAxisAlignment.start,
//             //           children: [
//             //             Padding(
//             //               padding: const EdgeInsets.only( bottom: 10),
//             //               child: Column(
//             //                   crossAxisAlignment: CrossAxisAlignment.center,
//             //                   mainAxisAlignment: MainAxisAlignment.end,
//             //                   children: [
//             //                     const Text('Promotion',
//             //                         style: TextStyle(
//             //                             color: Colors.white,
//             //                             fontSize: 10,
//             //                             fontWeight: FontWeight.w500)),
//             //                     const Text(
//             //                       'JUST\nFOR\nYOU',
//             //                       textAlign: TextAlign.center,
//             //                       style: TextStyle(
//             //                           fontSize: 30, color: Colors.white),
//             //                     ),
//             //                     Container(
//             //                       height: 10.h,
//             //                       width: 100.w,
//             //                       color: Colors.grey,
//             //                       child: Center(
//             //                         child: CustomText(
//             //                           text: "Valid until April 18th, 2022",
//             //                           style: AppTextStyles.fontSize10to500
//             //                               .copyWith(
//             //                                   color: AppColors.bgColor,
//             //                                   fontSize: 6),
//             //                         ),
//             //                       ),
//             //                     ),
//             //                   ]),
//             //             ),
//             //             Stack(
//             //               clipBehavior: Clip.none,
//             //               fit: StackFit.loose,
//             //               children: [
//             //                 Image.asset('assets/images/png_images/Discount.png',
//             //                     width: 100, height: 100),
//             //                 const Positioned(
//             //                     top: 30,
//             //                     left: 20,
//             //                     child: Text('50 %',
//             //                         style: TextStyle(
//             //                             color: Colors.white,
//             //                             fontSize: 32,
//             //                             fontWeight: FontWeight.w700))),
//             //                 Positioned(
//             //                   left: 70,
//             //                   child: Image.asset(
//             //                       'assets/images/png_images/Image.png',
//             //                       width: 100,
//             //                       height: 100),
//             //                 ),
//             //                 Positioned(
//             //                   left: 152,
//             //                   top: 70,
//             //                   bottom: 12,
//             //                   // right: 12,
//             //                   child: Image.asset(
//             //                       'assets/images/png_images/Logo12.png',
//             //                       width: 53,
//             //                       height: 16),
//             //                 ),
//             //               ],
//             //             )
//             //           ],
//             //         ),
//             //       );
//             //     },
//             //   ),
//             // ),
//             // SizedBox(
//             //   height: 30,
//             //   child: SmoothPageIndicator(
//             //     controller: controller,
//             //     count: 3,
//             //     axisDirection: Axis.horizontal,
//             //     effect: const WormEffect(
//             //       dotHeight: 16,
//             //       dotWidth: 16,
//             //       type: WormType.thinUnderground,
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
