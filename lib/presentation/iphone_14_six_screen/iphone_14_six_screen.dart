import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/modules/itemModule.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:farah_s_ecoshop/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class Iphone14SixScreen extends StatelessWidget {
   const Iphone14SixScreen({Key? key} )
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
              _buildTwelve(context),
              Column(
                children: [
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
                  SizedBox(height: 24.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "Falcon Plastic Spoons",
                        style: CustomTextStyles
                            .headlineLargePoppinsBlack900SemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "Price                                     AED 10.00",
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "  Carbon Footprint               5g CO2e",
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                  SizedBox(height: 10.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 31.v,
                      width: 170.h,
                      margin: EdgeInsets.only(right: 18.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          CustomIconButton(
                            height: 30.v,
                            width: 170.h,
                            alignment: Alignment.center,
                            child: CustomImageView(),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              "+ Add to cart",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.v),
                  _buildNinetyThree(context),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 31.v,
                      width: 170.h,
                      margin: EdgeInsets.only(right: 18.h),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 30.v,
                              width: 170.h,
                              decoration: BoxDecoration(
                                color: appTheme.blueGray10002,
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                border: Border.all(
                                  color: appTheme.black900,
                                  width: 1.h,
                                ),
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
                            alignment: Alignment.topCenter,
                            child: Text(
                              "+ Add to cart",
                              style: theme.textTheme.titleLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
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
  Widget _buildTwelve(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(vertical: 22.v),
      decoration: AppDecoration.fillGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          CustomAppBar(
            height: 36.v,
            centerTitle: true,
            title: Column(
              children: [
                Row(
                  children: [
                    AppbarSubtitleFour(
                      text: "Partnered Shops",
                      margin: EdgeInsets.only(top: 2.v),
                    ),
                    AppbarSubtitleFour(
                      text: "Carrefour",
                      margin: EdgeInsets.only(
                        left: 82.h,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 170.h,
                      child: Divider(),
                    ),
                    SizedBox(
                      width: 174.h,
                      child: Divider(
                        indent: 74.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          CustomImageView(
            imagePath: ImageConstant.imgItemPlasticUtensils,
            height: 184.v,
            width: 190.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return SizedBox(
      height: 175.v,
      width: 362.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "Eco-friendly Alternative",
                style: CustomTextStyles.headlineSmallPrimaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 27.v),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "Preserve Spoons",
                        style: theme.textTheme.titleLarge,
                      ),
                    ),
                  ),
                  Text(
                    "Price                       AED 14.00",
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    " Carbon Footprint   1g CO2e",
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgItemAlternative,
            height: 139.v,
            width: 91.h,
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
