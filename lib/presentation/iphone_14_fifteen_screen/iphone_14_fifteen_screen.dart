import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14FifteenScreen extends StatelessWidget {
  const Iphone14FifteenScreen({Key? key})
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
              SizedBox(height: 26.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 23.h,
                    right: 91.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Start Date",
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        "End Date",
                        style: theme.textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ),
              _buildOneMillionOneHundredTwelveThou(context),
              SizedBox(height: 50.v),
              SizedBox(
                height: 225.v,
                width: 188.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "Weekly Report",
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage14,
                      height: 191.v,
                      width: 188.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 42.v),
              SizedBox(
                height: 204.v,
                width: 230.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "Monthly Report",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage13,
                      height: 177.v,
                      width: 230.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.v),
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
          text: "Trends",
          margin: EdgeInsets.fromLTRB(29.h, 30.v, 29.h, 22.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildOneMillionOneHundredTwelveThou(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 23.h),
            child: _buildThirtyFive(
              context,
              userLabel: "1/11/2023",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: _buildThirtyFive(
              context,
              userLabel: "7/11/2023",
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildThirtyFive(
    BuildContext context, {
    required String userLabel,
  }) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7.h),
        decoration: AppDecoration.outlineBlack9002.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder18,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Opacity(
              opacity: 0.75,
              child: Padding(
                padding: EdgeInsets.only(bottom: 4.v),
                child: Text(
                  userLabel,
                  style: CustomTextStyles.titleLargeBlack900_2.copyWith(
                    color: appTheme.black900.withOpacity(0.62),
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage7,
              height: 32.v,
              width: 31.h,
              margin: EdgeInsets.only(
                left: 15.h,
                bottom: 1.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
