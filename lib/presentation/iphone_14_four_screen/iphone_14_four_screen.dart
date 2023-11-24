import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14FourScreen extends StatelessWidget {
  const Iphone14FourScreen({Key? key})
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
              _buildNineteen(context),
              Column(
                children: [
                  Container(
                    height: 16.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white70,
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
                  SizedBox(height: 66.v),
                  CustomOutlinedButton(
                    width: 270.h,
                    text: "Partnered Shops",
                    buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,
                    onPressed: ()=> Navigator.pushNamed(context, AppRoutes.iphone14NineScreen)
                  ),
                  SizedBox(height: 57.v),
                  CustomOutlinedButton(
                    width: 270.h,
                    text: "Eco-friendly Shops",
                    buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,
                  ),
                  SizedBox(height: 49.v),
                  CustomOutlinedButton(
                    width: 270.h,
                    text: "View Cart",
                    buttonStyle: CustomButtonStyles.outlineBlack,
                    buttonTextStyle: CustomTextStyles.headlineSmallOnPrimary,
                      onPressed: ()=> Navigator.pushNamed(context, AppRoutes.iphone14SevenScreen)

                  ),
                  SizedBox(height: 97.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgCompanyLogo1,
                    height: 60.v,
                    width: 225.h,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNineteen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 19.v),
          CustomAppBar(
            height: 59.v,
            leadingWidth: 73.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 33.h,
                top: 4.v,
                bottom: 51.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "Shops",
            ),
          ),
          SizedBox(height: 2.v),
          CustomImageView(
            imagePath: ImageConstant.imgIcons8Shops64,
            height: 180.v,
            width: 167.h,
          ),
        ],
      ),
    );
  }
}
