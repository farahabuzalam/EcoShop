import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone14OneScreen extends StatelessWidget {
  const Iphone14OneScreen({Key? key})
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
              horizontal: 17.h,
              vertical: 21.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 51.v),
                _buildView(context),
                SizedBox(height: 21.v),
                Container(
                  decoration: AppDecoration.outlineBlack,
                  child: Text(
                    "EcoShop",
                    style: CustomTextStyles.poppinsTeal900,
                  ),
                ),
                SizedBox(height: 27.v),
                CustomOutlinedButton(
                  height: 74.v,
                  text: "Sign In",
                  margin: EdgeInsets.symmetric(horizontal: 20.h),
                  buttonStyle: CustomButtonStyles.outlineBlack,
                  buttonTextStyle:
                      CustomTextStyles.displayMediumPoppinsGray90002,
                  onPressed: ()=> Navigator.pushNamed(context, AppRoutes.iphone14TwoScreen),
                ),
                SizedBox(height: 15.v),
                Text(
                  "Create New Account",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 55.v),
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
  Widget _buildView(BuildContext context) {
    return SizedBox(
      height: 345.v,
      width: 346.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 345.adaptSize,
              width: 345.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.lightGreen50,
                borderRadius: BorderRadius.circular(
                  172.h,
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgIcons8Grocery100,
            height: 336.v,
            width: 346.h,
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
