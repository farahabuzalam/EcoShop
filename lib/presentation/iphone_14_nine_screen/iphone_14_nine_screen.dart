import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14NineScreen extends StatelessWidget {
  const Iphone14NineScreen({Key? key})
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
          width: double.maxFinite,
          child: Column(
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
              SizedBox(height: 26.v),
              GestureDetector(
                child: CustomImageView(
                  imagePath: ImageConstant.imgCarrefourLogo2,
                  height: 157.v,
                  width: 187.h,
                ),
                onTap:()=> Navigator.pushNamed(context, AppRoutes.iphone14EightScreen) ,
              ),
              SizedBox(height: 2.v),
              Text(
                "Carrefour",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 19.v),
              CustomImageView(
                imagePath: ImageConstant.imgLuluLogo1,
                height: 147.v,
                width: 187.h,
              ),
              SizedBox(height: 4.v),
              Text(
                "Lulu Hypermarket",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 30.v),
              CustomImageView(
                imagePath: ImageConstant.imgSpinneysLogo1,
                height: 142.v,
                width: 181.h,
              ),
              SizedBox(height: 1.v),
              Text(
                "Spinneys",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 24.v),
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
      height: 99.v,
      leadingWidth: 73.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 33.h,
          top: 49.v,
          bottom: 47.v,
        ),
      ),
      title: AppbarSubtitleTwo(
        text: "Partnered Shops",
        margin: EdgeInsets.only(left: 88.h),
      ),
      styleType: Style.bgFill,
    );
  }
}
