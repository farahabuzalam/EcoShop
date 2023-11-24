import '../iphone_14_fourteen_screen/widgets/eightynine_item_widget.dart';
import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_leading_image.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class Iphone14FourteenScreen extends StatelessWidget {
  const Iphone14FourteenScreen({Key? key})
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
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25.h,
                    right: 90.h,
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
              _buildSixtyEight(context),
              SizedBox(height: 37.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text(
                    "Purchase List",
                    style: theme.textTheme.headlineSmall,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
              _buildSeventyEight(context),
              SizedBox(height: 17.v),
              _buildSixtyFour(context),
              SizedBox(height: 34.v),
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
      title: AppbarSubtitleTwo(
        text: "Purchase History",
        margin: EdgeInsets.only(left: 123.h),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSixtyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 18.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 23.h),
            child: _buildSeven(
              context,
              userName: "5/11/2023",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: _buildSeven(
              context,
              userName: "9/11/2023",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 25.h,
        right: 17.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 30.v),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 1.v,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return EightynineItemWidget();
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 275.v),
            child: Text(
              "Carrefour",
              style: CustomTextStyles.titleLargeBlue900,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyFour(BuildContext context) {
    return SizedBox(
      height: 117.v,
      width: 379.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Lulu Hypermarket",
              style: CustomTextStyles.titleLargeBlue900,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Baby Mandarin",
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                Text(
                  "Price                         AED 3.65",
                  style: CustomTextStyles.titleLargeRegular,
                ),
                Text(
                  "Carbon Footprint  2g CO2e",
                  style: CustomTextStyles.titleLargeRegular,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage10,
            height: 89.v,
            width: 105.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 3.h,
              bottom: 1.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSeven(
    BuildContext context, {
    required String userName,
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
                  userName,
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
                left: 13.h,
                bottom: 3.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
