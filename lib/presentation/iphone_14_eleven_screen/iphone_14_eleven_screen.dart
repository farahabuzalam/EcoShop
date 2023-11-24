import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14ElevenScreen extends StatelessWidget {
  const Iphone14ElevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 421.h,
          child: Column(
            children: [
              Container(
                height: 16.v,
                width: 421.h,
                decoration: BoxDecoration(
                  color: appTheme.gray900,
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black900.withOpacity(0.25),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        5,
                        5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                height: 299.v,
                width: 309.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage4,
                      height: 299.v,
                      width: 309.h,
                      alignment: Alignment.center,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgIcons8Customer64,
                      height: 207.v,
                      width: 205.h,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 22.v),
                    ),
                  ],
                ),
              ),
              Text(
                "Name                                     XYZ",
                style: CustomTextStyles.headlineSmallRegular_1,
              ),
              SizedBox(height: 18.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Username ",
                      style: theme.textTheme.headlineSmall,
                    ),
                    TextSpan(
                      text: "                     XYZ_03",
                      style: CustomTextStyles.headlineSmallRegular,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 31.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Phone Number   ",
                      style: theme.textTheme.headlineSmall,
                    ),
                    TextSpan(
                      text: "050 537 4560",
                      style: CustomTextStyles.headlineSmallRegular,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 25.v),
              Text(
                "Password                         ********",
                style: CustomTextStyles.headlineSmallRegular_1,
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 90.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 7.v,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "Edit Profile",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage2,
                        height: 54.adaptSize,
                        width: 54.adaptSize,
                        margin: EdgeInsets.only(left: 2.h),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.v),
              CustomImageView(
                imagePath: ImageConstant.imgCompanyLogo1,
                height: 60.v,
                width: 225.h,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 69.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 29.h,
          top: 32.v,
          bottom: 54.v,
        ),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "My Profile",
          margin: EdgeInsets.fromLTRB(21.h, 33.v, 21.h, 19.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }
}
