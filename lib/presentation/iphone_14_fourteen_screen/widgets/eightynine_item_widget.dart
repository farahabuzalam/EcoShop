import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EightynineItemWidget extends StatelessWidget {
  const EightynineItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 1.v),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgItemPlasticUtensils,
            height: 121.v,
            width: 100.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 4.h,
                bottom: 36.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Falcon Plastic Spoons",
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 1.v),
                  SizedBox(
                    height: 54.v,
                    width: 269.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            "Price                        AED 10.00",
                            style: CustomTextStyles.titleLargeRegular,
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "Carbon Footprint  5g CO2e",
                            style: CustomTextStyles.titleLargeRegular,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
