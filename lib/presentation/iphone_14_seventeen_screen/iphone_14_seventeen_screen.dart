import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_title_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14SeventeenScreen extends StatelessWidget {
  const Iphone14SeventeenScreen({Key? key})
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
              SizedBox(height: 17.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 29.h),
                  child: Text(
                    "List of Forums",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 34.v),
              _buildView(context),
              SizedBox(height: 60.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 30.v,
                  width: 247.h,
                  margin: EdgeInsets.only(right: 28.h),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 28.v,
                          width: 247.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Best Eco-friendly Items",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 81.v),
              _buildView1(context),
              SizedBox(height: 38.v),
              _buildView2(context),
              SizedBox(height: 28.v),
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
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgImage15,
        margin: EdgeInsets.only(left: 76.h),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "Forum Section",
          margin: EdgeInsets.fromLTRB(8.h, 31.v, 28.h, 21.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 29.h,
        right: 35.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage17,
            height: 100.adaptSize,
            width: 100.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 22.v,
              bottom: 16.v,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30.v,
                  width: 240.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 28.v,
                          width: 240.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Best Shopping Deals",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Text(
                      "45",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 32.h,
        right: 28.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage21,
            height: 125.v,
            width: 100.h,
          ),
          Container(
            height: 64.v,
            width: 247.h,
            margin: EdgeInsets.only(
              left: 14.h,
              top: 21.v,
              bottom: 39.v,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 61.v,
                    width: 247.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 224.h,
                    child: Text(
                      "Sustainable Shopping\nStrategies",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildView2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 38.h,
        right: 27.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage22,
            height: 100.adaptSize,
            width: 100.adaptSize,
          ),
          Container(
            height: 31.v,
            width: 247.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 8.v,
              bottom: 60.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 30.v,
                    width: 247.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Best Vegan Meal Kits",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
