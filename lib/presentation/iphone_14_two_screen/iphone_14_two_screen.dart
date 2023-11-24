import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_title.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14TwoScreen extends StatelessWidget {
  const Iphone14TwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: _buildAppBar(context),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            border: Border.all(
              color: appTheme.black900,
              width: 5.h,
            ),
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0, 1),
              colors: [
                appTheme.green800Bf,
                appTheme.green400Bf,
                appTheme.greenA400Bf,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 39.h,
              vertical: 1.v,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment(1.25, -1),
                  child: Container(
                      child: Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 60,
                      )                ),
                ),

                SizedBox(
                  height: 100,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Shop sustainably with us",
                    style: CustomTextStyles.titleLargeGray90001,
                  ),
                ),
                Spacer(
                  flex: 45,
                ),
                CustomOutlinedButton(

                  text: "My Account",
                  margin: EdgeInsets.symmetric(horizontal: 21.h),
                  buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,                ),
                SizedBox(height: 87.v),
                CustomOutlinedButton(
                  text: "View Shops",
                  margin: EdgeInsets.symmetric(horizontal: 21.h),
                  buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,
                onPressed: ()=> Navigator.pushNamed(context, AppRoutes.iphone14FourScreen),),
                SizedBox(height: 81.v),
                CustomOutlinedButton(
                  text: "View Community",
                  margin: EdgeInsets.only(
                    left: 21.h,
                    right: 20.h,
                  ),
                  buttonStyle: CustomButtonStyles.outlineBlack,

                  buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,
                ),
                Spacer(
                  flex: 54,
                ),
                SizedBox(height: 24.v),
                CustomImageView(
                  imagePath: ImageConstant.imgCompanyLogo1,
                  height: 60.v,
                  width: 225.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 93.v,
      title: AppbarTitle(
        text: "Welcome!",
        margin: EdgeInsets.only(left: 39.h),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(
            left: 20.h,
            top: 6.v,
            right: 20.h,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 3.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder32,
          ),
          child: Column(
            children: [
              SizedBox(height: 3.v),
              AppbarImage(
                imagePath: ImageConstant.imgIcons8Customer50,
                margin: EdgeInsets.only(left: 2.h),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
