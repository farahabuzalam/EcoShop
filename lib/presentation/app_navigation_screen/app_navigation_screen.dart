import 'package:farah_s_ecoshop/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14OneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14FourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Nine",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14NineScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Eight",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14EightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Six",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14SixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Seven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14SevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Five",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14FiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Eleven",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Twelve",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14TwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Thirteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14ThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Fourteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14FourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Fifteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14FifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Sixteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14SixteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Seventeen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14SeventeenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "iPhone 14 - Eighteen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.iphone14EighteenScreen),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
