import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:farah_s_ecoshop/widgets/custom_outlined_button.dart';
import 'package:farah_s_ecoshop/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class Iphone14EighteenScreen extends StatelessWidget {
  Iphone14EighteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController imageThirtyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 421.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 421.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 21.v,
                ),
                decoration: AppDecoration.fillGreen,
                child: Text(
                  "Review Section",
                  style: theme.textTheme.headlineLarge,
                ),
              ),
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
              SizedBox(height: 61.v),
              CustomImageView(
                imagePath: ImageConstant.imgImage29,
                height: 172.v,
                width: 282.h,
              ),
              SizedBox(height: 7.v),
              Text(
                "Lipton Tea",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 33.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 29.h,
                  right: 28.h,
                ),
                child: CustomTextFormField(
                  controller: imageThirtyController,
                  hintText: "Write your review",
                  hintStyle: CustomTextStyles.titleLargeBlack900_1,
                  textInputAction: TextInputAction.done,
                  prefix: Padding(
                    padding: EdgeInsets.fromLTRB(26.h, 30.v, 30.h, 13.v),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 31.v,
                          width: 29.h,
                          margin: EdgeInsets.fromLTRB(26.h, 30.v, -42.h, 13.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 31.v,
                          width: 29.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 31.v,
                          width: 29.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 31.v,
                          width: 29.h,
                        ),
                      ],
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 174.v,
                  ),
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(-9.h, 30.v, 30.h, 13.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage30,
                      height: 31.v,
                      width: 29.h,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 174.v,
                  ),
                  maxLines: 6,
                  contentPadding: EdgeInsets.symmetric(vertical: 11.v),
                  borderDecoration: TextFormFieldStyleHelper.outlineBlack1,
                  fillColor: theme.colorScheme.primary.withOpacity(1),
                ),
              ),
              SizedBox(height: 20.v),
              CustomOutlinedButton(
                height: 53.v,
                width: 113.h,
                text: "Post",
                margin: EdgeInsets.only(right: 28.h),
                buttonStyle: CustomButtonStyles.outlineBlackTL252,
                alignment: Alignment.centerRight,
              ),
              Spacer(),
              SizedBox(height: 26.v),
              CustomImageView(
                imagePath: ImageConstant.imgCompanyLogo1,
                height: 60.v,
                width: 225.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
