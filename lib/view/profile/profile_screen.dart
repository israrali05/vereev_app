import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:swooshed_app/utils/app_colors/app_colors.dart';
import 'package:swooshed_app/utils/app_images/app_images.dart';
import 'package:swooshed_app/view/profile/components/language_screen_select.dart';
import 'package:swooshed_app/view/profile/components/row_widget.dart';
import 'components/profile_header_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: 780.h,
          padding: EdgeInsets.symmetric(horizontal: 25.r, vertical: 68.r),
          child: Column(children: [
            const ProfileHeaderWidget(),
            SizedBox(
              height: 24.h,
            ),
            Column(
              children: [
                RowWidget(
                  ontap: () {},
                  preffix: AppImages.profileInviteFriend,
                  text: AppLocalizations.of(context)!.invite_friends,
                ),
                SizedBox(
                  height: 8.h,
                ),
                RowWidget(
                  ontap: () {},
                  preffix: AppImages.profileShareApp,
                  text: AppLocalizations.of(context)!.share_vereev_app,
                ),
                SizedBox(
                  height: 24.h,
                ),
                Column(
                  children: [
                    RowWidget(
                      ontap: () {},
                      preffix: AppImages.profileAboutUs,
                      text: AppLocalizations.of(context)!.about_us,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    RowWidget(
                      ontap: () {},
                      preffix: AppImages.profileContactUs,
                      text: AppLocalizations.of(context)!.contact_us,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    RowWidget(
                      ontap: () {},
                      preffix: AppImages.profileFAQ,
                      text: AppLocalizations.of(context)!.faq,
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                Column(
                  children: [
                    RowWidget(
                      ontap: () {
                        Get.to(() => const ChooseLanguagePofile());
                      },
                      preffix: AppImages.profileLanguages,
                      text: AppLocalizations.of(context)!.language,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    RowWidget(
                      ontap: () {},
                      preffix: AppImages.profileSetting,
                      text: AppLocalizations.of(context)!.setting,
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
