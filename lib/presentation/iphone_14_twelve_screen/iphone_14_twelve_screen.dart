import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:farah_s_ecoshop/widgets/app_bar/custom_app_bar.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:farah_s_ecoshop/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14TwelveScreen extends StatelessWidget {
  Iphone14TwelveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameController = TextEditingController();

  TextEditingController xYZThreeController = TextEditingController();

  TextEditingController fortySevenController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SizedBox(
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
                SizedBox(height: 14.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 39.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 194.v),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Name",
                                  style: theme.textTheme.titleLarge,
                                ),
                                TextSpan(
                                  text: "                      ",
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Container(
                          height: 195.v,
                          width: 206.h,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            bottom: 29.v,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage4,
                                height: 195.v,
                                width: 206.h,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgIcons8Customer64,
                                height: 135.v,
                                width: 136.h,
                                alignment: Alignment.bottomCenter,
                                margin: EdgeInsets.only(bottom: 14.v),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                _buildName(context),
                SizedBox(height: 21.v),
                _buildFiftySeven(context),
                SizedBox(height: 25.v),
                _buildFiftyEight(context),
                SizedBox(height: 28.v),
                _buildFiftyNine(context),
                SizedBox(height: 30.v),
                _buildSixtyOne(context),
                SizedBox(height: 22.v),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: Padding(
        padding: EdgeInsets.only(left: 31.h),
        child: Column(
          children: [
            AppbarSubtitleFour(
              text: "My Profile",
              margin: EdgeInsets.only(right: 2.h),
            ),
            SizedBox(height: 2.v),
            SizedBox(
              width: 105.h,
              child: Divider(),
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleThree(
          text: "Edit Profile",
          margin: EdgeInsets.fromLTRB(33.h, 30.v, 33.h, 28.v),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 33.h,
        right: 31.h,
      ),
      child: CustomTextFormField(
        controller: nameController,
        hintText: "XYZ",
      ),
    );
  }

  /// Section Widget
  Widget _buildXYZThree(BuildContext context) {
    return CustomTextFormField(
      width: 357.h,
      controller: xYZThreeController,
      hintText: "XYZ_03",
      alignment: Alignment.bottomCenter,
    );
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return SizedBox(
      height: 63.v,
      width: 357.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Username ",
                      style: theme.textTheme.titleLarge,
                    ),
                    TextSpan(
                      text: "                     ",
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          _buildXYZThree(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortySeven(BuildContext context) {
    return CustomTextFormField(
      width: 359.h,
      controller: fortySevenController,
      hintText: "050 537 4560",
      alignment: Alignment.bottomCenter,
      suffix: Container(
        margin: EdgeInsets.only(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20.h,
          ),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.imgRectangle24,
          height: 40.v,
          width: 359.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 40.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyEight(BuildContext context) {
    return SizedBox(
      height: 67.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 7.h),
              child: Text(
                "Phone Number   ",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          _buildFortySeven(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      width: 359.h,
      controller: passwordController,
      hintText: "********",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      alignment: Alignment.bottomCenter,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 5.v, 21.h, 5.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage3,
          height: 27.v,
          width: 38.h,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 37.v,
      ),
      obscureText: true,
      borderDecoration: TextFormFieldStyleHelper.outlineBlackTL18,
    );
  }

  /// Section Widget
  Widget _buildFiftyNine(BuildContext context) {
    return SizedBox(
      height: 65.v,
      width: 359.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                "Password                         ",
                style: theme.textTheme.titleLarge,
              ),
            ),
          ),
          _buildPassword(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSave(BuildContext context) {
    return CustomOutlinedButton(
      height: 53.v,
      width: 128.h,
      text: "Save",
      buttonStyle: CustomButtonStyles.outlineBlackTL252,
    );
  }

  /// Section Widget
  Widget _buildCancel(BuildContext context) {
    return CustomOutlinedButton(
      height: 53.v,
      width: 128.h,
      text: "Cancel",
      buttonStyle: CustomButtonStyles.outlineBlackTL253,
    );
  }

  /// Section Widget
  Widget _buildSixtyOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildSave(context),
          _buildCancel(context),
        ],
      ),
    );
  }
}
