import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14ThreeScreen extends StatelessWidget {
  const Iphone14ThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildThirtyOne(context),
              Container(
                height: 16.v,
                width: double.maxFinite,
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
              SizedBox(height: 29.v),
              Container(
                width: 300.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineBlack9001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder25,
                ),
                child: Text(
                  "View Profile",
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 28.v),
              CustomOutlinedButton(
                text: "View Purchase History",
                margin: EdgeInsets.symmetric(horizontal: 45.h),
              ),
              SizedBox(height: 28.v),
              CustomOutlinedButton(
                text: "View Earned Points",
                margin: EdgeInsets.symmetric(horizontal: 45.h),
              ),
              SizedBox(height: 30.v),
              CustomOutlinedButton(
                text: "View Trends",
                margin: EdgeInsets.symmetric(horizontal: 45.h),
              ),
              SizedBox(height: 33.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 108.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIcons8SignOut50,
                        height: 34.v,
                        width: 32.h,
                        margin: EdgeInsets.only(bottom: 6.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 13.h,
                          top: 2.v,
                        ),
                        child: Text(
                          "Sign Out",
                          style: theme.textTheme.headlineSmall,
                        ),
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
  Widget _buildThirtyOne(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillGreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          CustomImageView(
            imagePath: ImageConstant.imgArrow1,
            height: 3.v,
            width: 40.h,
          ),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(left: 38.h),
            child: Text(
              "My Account",
              style: theme.textTheme.displayMedium,
            ),
          ),
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgIcons8Customer64,
            height: 171.v,
            width: 190.h,
            margin: EdgeInsets.only(left: 65.h),
          ),
        ],
      ),
    );
  }
}
