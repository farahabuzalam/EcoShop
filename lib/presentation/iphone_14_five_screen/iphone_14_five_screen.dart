import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14FiveScreen extends StatelessWidget {
  const Iphone14FiveScreen({Key? key})
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
              _buildFortyOne(context),
              Expanded(
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
                    Spacer(
                      flex: 48,
                    ),
                    CustomOutlinedButton(
                      width: 247.h,
                      text: "Review Section",
                    ),
                    SizedBox(height: 73.v),
                    CustomOutlinedButton(
                      width: 247.h,
                      text: "Forum Section",
                    ),
                    Spacer(
                      flex: 51,
                    ),
                    SizedBox(height: 26.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgCompanyLogo1,
                      height: 60.v,
                      width: 225.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.fillGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 18.v),
          CustomAppBar(
            height: 59.v,
            leadingWidth: 60.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrow1,
              margin: EdgeInsets.only(
                left: 20.h,
                bottom: 55.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "Community",
            ),
          ),
          SizedBox(height: 5.v),
          CustomImageView(
            imagePath: ImageConstant.imgIcons8Community64,
            height: 178.adaptSize,
            width: 178.adaptSize,
          ),
        ],
      ),
    );
  }
}
