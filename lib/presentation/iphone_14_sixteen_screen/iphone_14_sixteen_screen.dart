import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_title_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:farah_s_ecoshop/widgets/custom_floating_text_field.dart';
import 'package:flutter/material.dart';

class Iphone14SixteenScreen extends StatelessWidget {
  Iphone14SixteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController carrefourController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 421.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              SizedBox(height: 43.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 29.h,
                  right: 51.h,
                ),
                child: CustomFloatingTextField(
                  controller: carrefourController,
                  labelText: "Select Shop",
                  labelStyle: CustomTextStyles.titleLargeBlack900_2,
                  hintText: "Select Shop",
                  textInputAction: TextInputAction.done,
                ),
              ),
              SizedBox(height: 23.v),
              Padding(
                padding: EdgeInsets.only(left: 32.h),
                child: Text(
                  "Select Category",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 72.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage25,
                height: 102.v,
                width: 176.h,
                margin: EdgeInsets.only(left: 26.h),
              ),
              SizedBox(height: 3.v),
              _buildNinety(context),
              SizedBox(height: 24.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage27,
                height: 150.v,
                width: 75.h,
                margin: EdgeInsets.only(left: 69.h),
              ),
              _buildNinetyOne(context),
              SizedBox(height: 15.v),
              CustomImageView(
                imagePath: ImageConstant.imgCompanyLogo1,
                height: 60.v,
                width: 225.h,
                alignment: Alignment.center,
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
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgImage16,
        margin: EdgeInsets.only(left: 63.h),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "Review Section",
          margin: EdgeInsets.fromLTRB(8.h, 31.v, 19.h, 21.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildNinety(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 32.h,
          right: 23.h,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 153.h,
              child: Text(
                "Masafi Pure \nDrinking Water",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge,
              ),
            ),
            Container(
              width: 179.h,
              margin: EdgeInsets.only(left: 34.h),
              child: Text(
                "Starbucks Blonde\nExpresso Roast",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 50.h,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 151.h,
            child: Text(
              "Classic Instant\nCoffee",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 86.h,
              bottom: 28.v,
            ),
            child: Text(
              "Lipton Tea",
              style: theme.textTheme.titleLarge,
            ),
          ),
        ],
      ),
    );
  }
}
