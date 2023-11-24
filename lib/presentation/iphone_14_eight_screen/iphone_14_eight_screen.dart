import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:farah_s_ecoshop/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class Iphone14EightScreen extends StatelessWidget {
  Iphone14EightScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildTwentyThree(context),
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
                SizedBox(height: 25.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.h),
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Search Item’s Name",
                  ),
                ),
                SizedBox(height: 57.v),
                Text(
                  "OR",
                  style: CustomTextStyles.displayMediumPoppinsBlack900,
                ),
                SizedBox(height: 58.v),
                CustomOutlinedButton(
                  height: 87.v,
                  text: "Scan Item’s Barcode",
                  margin: EdgeInsets.only(
                    left: 25.h,
                    right: 24.h,
                  ),
                  buttonStyle: CustomButtonStyles.outlineBlackTL251,
                ),
                SizedBox(height: 57.v),
                Text(
                  "OR",
                  style: CustomTextStyles.displayMediumPoppinsBlack900,
                ),
                SizedBox(height: 58.v),
                CustomOutlinedButton(
                  height: 87.v,
                  text: "Browse Items",
                  margin: EdgeInsets.only(
                    left: 25.h,
                    right: 24.h,
                  ),
                  buttonStyle: CustomButtonStyles.outlineBlackTL251,
                  onPressed: ()=> Navigator.pushNamed(context, AppRoutes.carrefourItems),
                ),
                SizedBox(height: 98.v),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyThree(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 29.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.fillGreen,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Partnered Shops",
            style: CustomTextStyles.headlineSmallRobotoCondensedPrimary,
          ),
          SizedBox(height: 1.v),
          SizedBox(
            width: 170.h,
            child: Divider(),
          ),
          SizedBox(height: 27.v),
          CustomImageView(
            imagePath: ImageConstant.imgCarrefourLogo2,
            height: 174.v,
            width: 191.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 4.v),
        ],
      ),
    );
  }
}
