import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14ThirteenScreen extends StatelessWidget {
  const Iphone14ThirteenScreen({Key? key})
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
              _buildView(context),
              SizedBox(height: 18.v),
              Text(
                "Coupon Eligibility Limit                        100",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 15.v),
              _buildAvailableCoupons(context),
              SizedBox(height: 21.v),
              Text(
                "Remaining Points for Eligibility            0",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 24.v),
              _buildAddPoints(context),
              SizedBox(height: 35.v),
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
          text: "Earned Points",
          margin: EdgeInsets.fromLTRB(28.h, 30.v, 28.h, 22.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 321.v,
      width: 421.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
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
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Total Earned Points     ",
                    style:
                        CustomTextStyles.headlineLargePoppinsBlack900SemiBold_1,
                  ),
                  TextSpan(
                    text: "300",
                    style: CustomTextStyles.headlineLargePoppinsGreen900,
                  ),
                  TextSpan(
                    text: "  ",
                  ),
                  TextSpan(
                    text: "          ",
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage5,
            height: 286.v,
            width: 309.h,
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(right: 43.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAvailableCoupons(BuildContext context) {
    return SizedBox(
      height: 119.v,
      width: 380.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Available Coupons",
              style: theme.textTheme.titleLarge,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage6,
            height: 91.v,
            width: 379.h,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddPoints(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        right: 17.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomOutlinedButton(
            height: 53.v,
            width: 154.h,
            text: "Add Points",
            buttonStyle: CustomButtonStyles.outlineBlackTL252,
          ),
          CustomOutlinedButton(
            height: 53.v,
            width: 208.h,
            text: "Redeem Points",
            buttonStyle: CustomButtonStyles.outlineBlackTL253,
          ),
        ],
      ),
    );
  }
}
